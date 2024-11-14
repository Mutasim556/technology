<?php

namespace App\Http\Controllers\Admin\Settings;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\Settings\LogoStoreRequest;
use App\Http\Requests\Admin\Settings\LogoUpdateRequest;
use App\Models\Admin\Settings\Logo;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class LogoController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $logos = Logo::where([['status',1],['delete',0]])->get();
        return view('backend.blade.settings.frontend.logo.index',compact('logos'));
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
    public function store(LogoStoreRequest $data)
    {
        $logo = $data->store();
        if($logo){
            $logo->logo_type = ucwords(str_replace('_',' ',$logo->logo_type));
            return response([
                'logo' => $logo,
                'title' => __('admin_local.Congratulations !'),
                'text' => __('admin_local.Logo added successfully.'),
                'confirmButtonText' => __('admin_local.Ok'),
                'hasAnyPermission' => hasPermission(['setting-frontend-logo-update', 'setting-frontend-logo-delete']),
                'hasEditPermission' => hasPermission(['setting-frontend-logo-update']),
                'hasDeletePermission' => hasPermission(['setting-frontend-logo-delete']),
            ], 200);
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
        if(request()->ajax()){
            $logo = Logo::where([['id',$id]])->select('id','logo','logo_type','logo_alt_text','logo_link')->first();
            return $logo;
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(LogoUpdateRequest $data, string $id)
    {
        $logo = $data->update($id);
        if($logo){
            return response([
                'logo' => $logo,
                'title' => __('admin_local.Congratulations !'),
                'text' => __('admin_local.Logo Updated successfully.'),
                'confirmButtonText' => __('admin_local.Ok'),
            ], 200);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id) :Response
    {
        $logo = Logo::findOrFail($id);
        $logo->delete = 1;
        $logo->save();
        return response([
            'title'=>__('admin_local.Congratulations !'),
            'text'=>__('admin_local.Logo deleted successfully.'),
            'confirmButtonText'=>__('admin_local.Ok'),
        ]);
    }

    public function updateStatus(Request $data) :Response{
        Logo::where('id',$data->id)->update(['status'=>$data->status,'updated_at'=>Carbon::now()]);
        $logo = Logo::where('id',$data->id)->first();
        return response($logo);
    }
}
