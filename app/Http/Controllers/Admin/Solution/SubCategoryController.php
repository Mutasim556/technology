<?php

namespace App\Http\Controllers\Admin\Solution;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\Solution\SolutionSubcategoryStoreRequest;
use App\Models\Admin\Solution\SolutionCategory;
use App\Models\Admin\Solution\SolutionParentCategory;
use App\Models\Admin\Solution\SolutionSubCategory;
use Carbon\Carbon;
use Illuminate\Contracts\View\View;
use Illuminate\Http\Request;
use Intervention\Image\Drivers\Gd\Driver;
use Intervention\Image\ImageManager;

class SubCategoryController extends Controller 
{

    public function __construct()
    {
        $this->middleware('permission:solution-sub-category-index,admin');
        $this->middleware('permission:solution-sub-category-store,admin')->only('store');
        $this->middleware('permission:solution-sub-category-update,admin')->only(['edit','update','updateStatus']);
        $this->middleware('permission:solution-sub-category-delete,admin')->only('destroy');
    }

    public function index() :View
    {
        $sub_categories = SolutionSubCategory::with('category','admin')->where('sub_category_delete',0)->get();
        $categories = SolutionCategory::where('category_delete', 0)->get();
        $parent_categories = SolutionParentCategory::where('parent_category_delete', 0)->get();
        return view('backend.blade.solution.sub-category.index',compact('sub_categories','categories','parent_categories'));
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
    public function store(SolutionSubcategoryStoreRequest $data)
    {
        // dd($data->all());
        $sub_category_id = $data->store();
        return response([
            'sub_category' => SolutionSubCategory::with('admin','parentCategory','category')->findOrFail($sub_category_id),
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
        $sub_category = SolutionSubCategory::with('admin','parentCategory','category')->findOrFail($id);
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
        $sub_category = SolutionSubCategory::findOrFail($id);

        if($data->sub_category_image){
            $files = $data->sub_category_image;
            $file = $data->sub_category_name.time().'.'.$files->getClientOriginalExtension();
            $file_name = 'admin/inventory/file/solution/sub_category/'.$file;
            if($sub_category->sub_category_image){
                unlink($sub_category->sub_category_image);
            }
            $manager = new ImageManager(new Driver());
            $manager->read($data->sub_category_image)->resize(50,50)->save('admin/inventory/file/solution/sub_category/'.$file);

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
            'sub_category' => SolutionSubCategory::with('admin','parentCategory','category')->findOrFail($id),
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
        $sub_category = SolutionSubCategory::findOrFail($id);
        $sub_category->sub_category_delete=1;
        $sub_category->save();
        return response([
            'title'=>__('admin_local.Congratulations !'),
            'text'=>__('admin_local.Sub Category deleted successfully.'),
            'confirmButtonText'=>__('admin_local.Ok'),
        ]);
    }

    public function updateStatus(Request $data){
        $sub_category = SolutionSubCategory::findOrFail($data->id);
        $sub_category->sub_category_status=$data->status;
        $sub_category->updated_at=Carbon::now();
        $sub_category->save();
        return response($sub_category);
    }
}
