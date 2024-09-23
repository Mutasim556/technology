<?php

namespace App\Http\Controllers\FrontendControllers;

use App\Http\Controllers\Controller;
use App\Http\Resources\Frontend\ParentCategoryresource;
use App\Models\Admin\Product\ParentCategory;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Handle the incoming request.
     */
    public function __invoke(Request $request)
    {   
        $parent_categories = ParentCategory::with('category')->where([['parent_category_status',1],['parent_category_delete',0]])->get();
        return view('frontend.pages.home.index',compact('parent_categories'));
    }
}
