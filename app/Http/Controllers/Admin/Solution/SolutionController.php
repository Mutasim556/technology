<?php

namespace App\Http\Controllers\Admin\Solution;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\Solution\SolutionStoreRequest;
use App\Http\Requests\Admin\Solution\SolutionUpdateRequest;
use App\Models\Admin\Solution\Solution;
use App\Models\Admin\Solution\SolutionCategory;
use App\Models\Admin\Solution\SolutionDetail;
use App\Models\Admin\Solution\SolutionParentCategory;
use App\Models\Admin\Solution\SolutionSubCategory;
use Illuminate\Http\Request;

class SolutionController extends Controller
{
    /**
     * Display a listing of the resource.
     */ 
    public function index()
    {
        $solutions = Solution::with('parentCategory','category','subCategory','solutionDetails')->where([['status',1],['delete',0]])->get();
        return view('backend.blade.solution.index',compact('solutions'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $parent_categories = SolutionParentCategory::where([['parent_category_status',1],['parent_category_delete',0]])->get();
        return view('backend.blade.solution.create',compact('parent_categories'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(SolutionStoreRequest $data)
    {
        if($data->store()){
            return  response([
                'title'=>__('admin_local.Congratulations !'),
                'text'=>__('admin_local.Solution added successfully.'),
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
            if(request()->target=='category'){
                $categories = SolutionCategory::where([['category_status',1],['category_delete',0],['parent_category_id',$id]])->select('id','category_name')->get();
                // dd($categories);
                return $categories;
            }else{
                $sub_categories = SolutionSubCategory::where([['sub_category_status',1],['sub_category_delete',0],['category_id',$id]])->select('id','sub_category_name as category_name')->get();
                return $sub_categories;
            }
        }
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $parent_categories = SolutionParentCategory::where([['parent_category_status',1],['parent_category_delete',0]])->get();
        $solution = Solution::with('parentCategory','category','subCategory','solutionDetails')->where([['status',1],['delete',0],['id',$id]])->first();
        return view('backend.blade.solution.edit',compact('parent_categories','solution'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(SolutionUpdateRequest $data, string $id)
    {
        if($data->update($id)){
            return  response([
                'title'=>__('admin_local.Congratulations !'),
                'text'=>__('admin_local.Solution updated successfully.'),
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
        $solution = Solution::findOrFail($id);
        $solution->delete=1;
        $solution->save();
        return response([
            'title'=>__('admin_local.Congratulations !'),
            'text'=>__('admin_local.Solution deleted successfully.'),
            'confirmButtonText'=>__('admin_local.Ok'),
        ]);
    }


    public function solutionDetails(){
        $solution_details =SolutionDetail::where('solution_id',request()->solution_id)->first();
        return response([
            'solution_details'=>$solution_details,
            'download_title'=>explode('|',$solution_details->download_title),
            'download_icon'=>explode(',',$solution_details->download_icon),
            'download_file'=>explode(',',$solution_details->download_file),
        ]);
    }
}
