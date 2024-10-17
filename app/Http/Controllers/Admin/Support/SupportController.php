<?php

namespace App\Http\Controllers\Admin\Support;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\Support\SupportStoreRequest;
use App\Models\Admin\Support\SupportCategory;
use App\Models\Admin\Support\SupportParentCategory;
use Illuminate\Http\Request;

class SupportController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $parent_categories = SupportParentCategory::where([['parent_category_status',1],['parent_category_delete',0]])->get();
        return view('backend.blade.support.create',compact('parent_categories'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(SupportStoreRequest $data)
    {
        if($data->store()){
            return  response([
                'title'=>__('admin_local.Congratulations !'),
                'text'=>__('admin_local.Support added successfully.'),
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
            $categories = SupportCategory::where([['category_status',1],['category_delete',0],['parent_category_id',$id]])->select('id','category_name')->get();
            return $categories;
        }
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
