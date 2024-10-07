<?php

namespace App\Http\Controllers\Admin\Solution;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\Solution\SolutionStoreRequest;
use App\Models\Admin\Solution\SolutionCategory;
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
        $data->store();
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
