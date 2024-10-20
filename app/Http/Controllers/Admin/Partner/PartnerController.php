<?php

namespace App\Http\Controllers\Admin\Partner;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\Partner\PartnerStoreRequest;
use App\Http\Requests\Admin\Partner\PartnerUpdateRequest;
use App\Models\Admin\Partner\Partner;
use App\Models\Admin\Partner\PartnerCategory;
use App\Models\Admin\Partner\PartnerParentCategory;
use Illuminate\Http\Request;

class PartnerController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $partners = Partner::with('parentCategory','category')->where([['status',1],['delete',0]])->get();
        return view('backend.blade.partner.index',compact('partners'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $parent_categories = PartnerParentCategory::where([['parent_category_status',1],['parent_category_delete',0]])->get();
        return view('backend.blade.partner.create',compact('parent_categories'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(PartnerStoreRequest $data)
    {
        if($data->store()){
            return  response([
                'title'=>__('admin_local.Congratulations !'),
                'text'=>__('admin_local.Partner added successfully.'),
                'confirmButtonText'=>__('admin_local.Ok'),
            ],200);
        }else{
            return  response([
                'title'=>__('admin_local.Warning !'),
                'text'=>__('admin_local.Server Error'),
                'confirmButtonText'=>__('admin_local.Ok'),
            ],403);
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        if(request()->ajax()){
            $categories = PartnerCategory::where([['category_status',1],['category_delete',0],['parent_category_id',$id]])->select('id','category_name')->get();
            return $categories;
        }
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $parent_categories = PartnerParentCategory::where([['parent_category_status',1],['parent_category_delete',0]])->get();
        $partner = Partner::with('parentCategory','category')->where([['status',1],['delete',0],['id',$id]])->first();

        return view('backend.blade.partner.edit',compact('parent_categories','partner'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(PartnerUpdateRequest $data, string $id)
    {
        if($data->update($id)){
            return  response([
                'title'=>__('admin_local.Congratulations !'),
                'text'=>__('admin_local.Partner updated successfully.'),
                'confirmButtonText'=>__('admin_local.Ok'),
            ],200);
        }else{
            return  response([
                'title'=>__('admin_local.Warning !'),
                'text'=>__('admin_local.Server Error'),
                'confirmButtonText'=>__('admin_local.Ok'),
            ],403);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $partner = Partner::findOrFail($id);
        $partner->delete=1;
        $partner->save();
        return response([
            'title'=>__('admin_local.Congratulations !'),
            'text'=>__('admin_local.Partner deleted successfully.'),
            'confirmButtonText'=>__('admin_local.Ok'),
        ]);
    }
}
