<?php

namespace App\Http\Controllers\Admin\Vendor;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\Vendor\VendorStorerequest;
use App\Http\Requests\Admin\Vendor\VendorUpdateRequest;
use App\Models\Admin\Vendor\Vendor;
use Illuminate\Http\Request;

class VendorController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $vendors = Vendor::where([['status',1],['delete',0]])->get();
        return view('backend.blade.vendor.index',compact('vendors'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('backend.blade.vendor.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(VendorStorerequest $data)
    {
        if($data->store()){
            return  response([
                'title'=>__('admin_local.Congratulations !'),
                'text'=>__('admin_local.Vendor added successfully.'),
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
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $vendor = Vendor::where('id',$id)->first();
        return view('backend.blade.vendor.edit',compact('vendor'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(VendorUpdateRequest $data, string $id)
    {
        if($data->update($id)){
            return  response([
                'title'=>__('admin_local.Congratulations !'),
                'text'=>__('admin_local.Vendor updated successfully.'),
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
        $vendor = Vendor::findOrFail($id);
        $vendor->delete=1;
        $vendor->save();
        return response([
            'title'=>__('admin_local.Congratulations !'),
            'text'=>__('admin_local.Vendor deleted successfully.'),
            'confirmButtonText'=>__('admin_local.Ok'),
        ]);
    }
}
