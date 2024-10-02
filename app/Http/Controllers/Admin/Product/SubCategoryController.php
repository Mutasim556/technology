<?php

namespace App\Http\Controllers\Admin\Product;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\Product\SubcategoryStoreRequest;
use App\Models\Admin\Product\Category;
use App\Models\Admin\Product\ParentCategory;
use App\Models\Admin\Product\SubCategory;
use Carbon\Carbon;
use Illuminate\Contracts\View\View;
use Illuminate\Http\Request;
use Intervention\Image\Drivers\Gd\Driver;
use Intervention\Image\ImageManager;

class SubCategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index() :View
    {
        $sub_categories = SubCategory::with('category','admin')->where('sub_category_delete',0)->get();
        $categories = Category::where('category_delete', 0)->get();
        $parent_categories = ParentCategory::where('parent_category_delete', 0)->get();
        return view('backend.blade.product.sub-category.index',compact('sub_categories','categories','parent_categories'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(SubcategoryStoreRequest $data)
    {
        // dd($data->all());
        $sub_category_id = $data->store();
        return response([
            'sub_category' => SubCategory::with('admin','parentCategory','category')->findOrFail($sub_category_id),
            'title' => __('admin_local.Congratulations !'),
            'text' => __('admin_local.Sub Category create successfully.'),
            'confirmButtonText' => __('admin_local.Ok'),
            'hasAnyPermission' => hasPermission(['category-update', 'category-delete']),
            'hasEditPermission' => hasPermission(['category-update']),
            'hasDeletePermission' => hasPermission(['category-delete']),
        ], 200);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $sub_category = SubCategory::with('admin','parentCategory','category')->findOrFail($id);
        return response($sub_category);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $data, string $id)
    {
        // dd($id);
        $data->validate([
            'sub_category_name' => 'required',
            'sub_category_image' => 'mimes:png,jpg,jpeg|max:2000',
        ]);
        $sub_category = SubCategory::findOrFail($id);
        if($data->sub_category_image){
            $files = $data->sub_category_image;
            $file = $data->sub_category_name.time().'.'.$files->getClientOriginalExtension();
            $file_name =  env('ASSET_DIRECTORY').'/admin/inventory/file/sub_category/'.$file;
            if($sub_category->sub_category_image){
                unlink($sub_category->sub_category_image);
            }
            $manager = new ImageManager(new Driver());
            $manager->read($data->sub_category_image)->save( env('ASSET_DIRECTORY').'/admin/inventory/file/sub_category/'.$file);

            $sub_category->sub_category_name=$data->sub_category_name;
            $sub_category->parent_category_id=$data->parent_category;
            $sub_category->category_id=$data->category;
            $sub_category->sub_category_image=$file_name;
            $sub_category->save();
        }else{
            $sub_category->sub_category_name=$data->sub_category_name;
            $sub_category->parent_category_id=$data->parent_category;
            $sub_category->category_id=$data->category;
            $sub_category->save();
        }

        return response([
            'sub_category' => SubCategory::with('admin','parentCategory','category')->findOrFail($id),
            'title'=>__('admin_local.Congratulations !'),
            'text'=>__('admin_local.Sub Category updated successfully.'),
            'confirmButtonText'=>__('admin_local.Ok'),
        ],200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $sub_category = SubCategory::findOrFail($id);
        $sub_category->sub_category_delete=1;
        $sub_category->save();
        return response([
            'title'=>__('admin_local.Congratulations !'),
            'text'=>__('admin_local.Sub Category deleted successfully.'),
            'confirmButtonText'=>__('admin_local.Ok'),
        ]);
    }

    public function updateStatus(Request $data){
        $sub_category = SubCategory::findOrFail($data->id);
        $sub_category->sub_category_status=$data->status;
        $sub_category->updated_at=Carbon::now();
        $sub_category->save();
        return response($sub_category);
    }
}
