<?php

namespace App\Http\Controllers\Admin\Partner;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\Partner\PartnerCategoryStoreRequest;
use App\Models\Admin\Partner\PartnerCategory;
use App\Models\Admin\Partner\PartnerParentCategory;
use Carbon\Carbon;
use Illuminate\Contracts\View\View;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Intervention\Image\Drivers\Gd\Driver;
use Intervention\Image\ImageManager;

class CategoryController extends Controller
{
    public function __construct()
    {
        $this->middleware('permission:partner-category-index,admin');
        $this->middleware('permission:partner-category-store,admin')->only('store');
        $this->middleware('permission:partner-category-update,admin')->only(['edit','update','updateStatus']);
        $this->middleware('permission:partner-category-delete,admin')->only('destroy');
    }
    /**
     * Display a listing of the resource.
     */
    public function index() :View
    {
        $categories = PartnerCategory::with('parentCategory','admin')->where('category_delete',0)->get();
        $parent_categories = PartnerParentCategory::where('parent_category_delete', 0)->get();
        return view('backend.blade.partner.category.index',compact('categories','parent_categories'));
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
    public function store(PartnerCategoryStoreRequest $data):Response
    {
        $category_id = $data->store();
        return response([
            'category' => PartnerCategory::with('admin','parentCategory')->findOrFail($category_id),
            'title' => __('admin_local.Congratulations !'),
            'text' => __('admin_local.Category create successfully.'),
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
    public function edit(string $id) :Response
    {
       $category = PartnerCategory::with('admin','parentCategory')->findOrFail($id);
       return response($category);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $data, string $id):Response
    {
        $data->validate([
            'category_name' => 'required',
            'category_image' => 'mimes:png,jpg,jpeg|max:2000',
        ]);
        $category = PartnerCategory::findOrFail($id);

        if($data->category_image){
            $files = $data->category_image;
            $file = time().'.'.$files->getClientOriginalExtension();
            $file_name = 'admin/inventory/file/partner/category/'.$file;
            if($category->category_image){
                unlink($category->category_image);
            }
            $manager = new ImageManager(new Driver());
            $manager->read($data->category_image)->resize(50,50)->save('admin/inventory/file/partner/category/'.$file);

            $category->category_name=$data->category_name;
            $category->parent_category_id=$data->parent_category;
            $category->category_image=$file_name;
            $category->save();
        }else{
            $category->category_name=$data->category_name;
            $category->parent_category_id=$data->parent_category;
            $category->save();
        }

        return response([
            'category' => PartnerCategory::with('admin','parentCategory')->findOrFail($id),
            'title'=>__('admin_local.Congratulations !'),
            'text'=>__('admin_local.Category updated successfully.'),
            'confirmButtonText'=>__('admin_local.Ok'),
        ],200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id) :Response
    {
        $category = PartnerCategory::findOrFail($id);
        $category->category_delete=1;
        $category->save();
        return response([
            'title'=>__('admin_local.Congratulations !'),
            'text'=>__('admin_local.Category deleted successfully.'),
            'confirmButtonText'=>__('admin_local.Ok'),
        ]);
    }

    public function updateStatus(Request $data){
        $category = PartnerCategory::findOrFail($data->id);
        $category->category_status=$data->status;
        $category->updated_at=Carbon::now();
        $category->save();
        return response($category);
    }
}
