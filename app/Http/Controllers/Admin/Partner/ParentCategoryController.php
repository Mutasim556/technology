<?php

namespace App\Http\Controllers\Admin\Partner;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\Partner\PartnerParentCategoryRequest;
use App\Models\Admin\Partner\PartnerParentCategory;
use Carbon\Carbon;
use Illuminate\Contracts\View\View;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Validation\Rule;
use Intervention\Image\Drivers\Gd\Driver;
use Intervention\Image\ImageManager;

class ParentCategoryController extends Controller
{
    public function __construct()
    {
        $this->middleware('permission:partner-parent-category-index,admin');
        $this->middleware('permission:partner-parent-category-store,admin')->only('store');
        $this->middleware('permission:partner-parent-category-update,admin')->only(['edit','update','updateStatus']);
        $this->middleware('permission:partner-parent-category-delete,admin')->only('destroy');
    }
    /**
     * Display a listing of the resource.
     */
    public function index(): View
    {
        $parent_categories = PartnerParentCategory::with('admin')->where('parent_category_delete', 0)->get();
        return view('backend.blade.partner.parent_category.index', compact('parent_categories'));
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
    public function store(PartnerParentCategoryRequest $data): Response
    {
        $parent_category = $data->store();
        return response([
            'parent_category' => $parent_category,
            'user_name' => $parent_category->admin()->first()->name,
            'title' => __('admin_local.Congratulations !'),
            'text' => __('admin_local.Parent category create successfully.'),
            'confirmButtonText' => __('admin_local.Ok'),
            'hasAnyPermission' => hasPermission(['parent-category-update', 'parent-category-delete']),
            'hasEditPermission' => hasPermission(['parent-category-update']),
            'hasDeletePermission' => hasPermission(['parent-category-delete']),
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
        $parent_category = PartnerParentCategory::findOrFail($id);
        return response($parent_category);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $data, string $id)
    {
        if(!request()->ajax()){
            return false;
        }
        $data->validate([
            'parent_category_name'=>['required',Rule::unique('parent_categories')->ignore('id')->where(function($query) use ($id){$query->where([['parent_category_delete',0],['id','!=',$id]]);})],
            'parent_category_image'=>'mimes:jpg,jpeg,png|max:2000',
        ]);
        $parent_category = PartnerParentCategory::findOrFail($id);

        if($data->parent_category_image){
            $files = $data->parent_category_image;
            $file = $data->parent_category_name.time().'.'.$files->getClientOriginalExtension();
            $file_name = 'admin/inventory/file/partner/parent_category/'.$file;
            if($parent_category->parent_category_image){
                unlink($parent_category->parent_category_image);
            }
            $manager = new ImageManager(new Driver());
            $manager->read($data->parent_category_image)->resize(50,50)->save('admin/inventory/file/partner/parent_category/'.$file);
            $parent_category->parent_category_name=$data->parent_category_name;
            $parent_category->parent_category_image=$file_name;
            $parent_category->save();
        }else{
            $parent_category->parent_category_name=$data->parent_category_name;
            $parent_category->save();
        }

        return response([
            'parent_category' => $parent_category,
            'user_name' => $parent_category->admin()->first()->name,
            'title'=>__('admin_local.Congratulations !'),
            'text'=>__('admin_local.Parent Category updated successfully.'),
            'confirmButtonText'=>__('admin_local.Ok'),
        ],200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $parent_category = PartnerParentCategory::findOrFail($id);
        $parent_category->parent_category_delete=1;
        $parent_category->save();
        return response([
            'title'=>__('admin_local.Congratulations !'),
            'text'=>__('admin_local.Parent category deleted successfully.'),
            'confirmButtonText'=>__('admin_local.Ok'),
        ]);
    }

    public function updateStatus(Request $data){
        $parent_category = PartnerParentCategory::findOrFail($data->id);
        $parent_category->parent_category_status=$data->status;
        $parent_category->updated_at=Carbon::now();
        $parent_category->save();
        return response($parent_category);
    }
}
