<?php

namespace App\Http\Controllers\FrontendControllers;

use App\Http\Controllers\Controller;
use App\Http\Resources\Frontend\Categoryresource;
use App\Models\Admin\Product\Category;
use App\Models\Admin\Product\ParentCategory;
use App\Models\Admin\Solution\SolutionCategory;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class CategoryDetailsContorller extends Controller
{
    public function categoryDetails(Request $data):Response {
        if(request()->ajax()){
            $categories = Category::with('subCategory')->where('parent_category_id',$data->id)->get();
           
            return response([
                'categories'=>Categoryresource::collection($categories),
            ]);
        }else{
            return response([
                'message'=>'not found'
            ],400);
        }
        
    }

    public function solutionCategoryDetails(Request $data):Response {
        if(request()->ajax()){
            $categories = SolutionCategory::with('subCategory')->where('parent_category_id',$data->id)->get();
           
            return response([
                'categories'=>Categoryresource::collection($categories),
            ]);
        }else{
            return response([
                'message'=>'not found'
            ],400);
        }
        
    }
}
