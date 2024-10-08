<?php

namespace App\Http\Controllers\FrontendControllers;

use App\Http\Controllers\Controller;
use App\Models\Admin\Solution\Solution;
use Illuminate\Http\Request;

class SolutionController extends Controller
{
    public function index(){
        $solution = Solution::with('parentCategory','category','subCategory','solutionDetails')->where([['status',1],['delete',0],['sub_category_id',request()->solution_id]])->first();
        // dd($solution);
        return view('frontend.pages.solution.index',compact('solution'));
    }
}
