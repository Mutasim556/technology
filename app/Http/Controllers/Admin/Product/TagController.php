<?php

namespace App\Http\Controllers\Admin\Product;

use App\Http\Controllers\Controller;
use App\Models\Admin\Product\SubTag;
use App\Models\Admin\Product\Tag;
use Illuminate\Http\Request;

class TagController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $tags = Tag::all();
        $sub_tags = SubTag::with('tag')->get();
        return view('backend.blade.product.tags.index',compact('tags','sub_tags'));
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
    public function store(Request $data)
    {
        if($data->tag_type=='tag'){
            $data->validate([
                'tag_name'=>'unique:tags,tag',
            ]);
            $tag = new Tag();
            $tag->tag = $data->tag_name;
            $tag->save();
            return response([
                'tag' => Tag::findOrFail($tag->id),
                'title' => __('admin_local.Congratulations !'),
                'text' => __('admin_local.Tag create successfully.'),
                'confirmButtonText' => __('admin_local.Ok'),
                'hasAnyPermission' => hasPermission(['tag-delete']),
                'hasDeletePermission' => hasPermission(['tag-delete']),
            ], 200);
        }else if($data->tag_type=='sub_tag'){
            $data->validate([
                'sub_tag'=>'unique:sub_tags,name',
            ]);
            $tag = new SubTag();
            $tag->tag_id = $data->tag;
            $tag->name = $data->sub_tag;
            $tag->save();
            return response([
                'tag' => SubTag::with('tag')->where('id',$tag->id)->first(),
                'title' => __('admin_local.Congratulations !'),
                'text' => __('admin_local.Sub-Tag create successfully.'),
                'confirmButtonText' => __('admin_local.Ok'),
                'hasAnyPermission' => hasPermission(['tag-delete']),
                'hasDeletePermission' => hasPermission(['tag-delete']),
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
        if(request()->delete_type=='tag'){
            $tag = Tag::findOrFail($id);
            $tag->delete();
            return response([
                'table_id'=>'basic-1',
                'title' => __('admin_local.Congratulations !'),
                'text' => __('admin_local.Tag Deleted successfully.'),
                'confirmButtonText' => __('admin_local.Ok'),
            ], 200);
        }else{
            $tag = SubTag::findOrFail($id);
            $tag->delete();
            return response([
                'table_id'=>'basic-2',
                'title' => __('admin_local.Congratulations !'),
                'text' => __('admin_local.Sub-Tag Deleted successfully.'),
                'confirmButtonText' => __('admin_local.Ok'),
            ], 200);
        }
    }

    public function getSubTags(){
        $subtags = SubTag::where('tag_id',request()->tag)->get();
        // dd(request()->tag);
        return$subtags;
    }
}
