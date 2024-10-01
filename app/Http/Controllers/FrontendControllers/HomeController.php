<?php

namespace App\Http\Controllers\FrontendControllers;

use App\Http\Controllers\Controller;
use App\Http\Resources\Frontend\ParentCategoryresource;
use App\Models\Admin\Partner\PartnerParentCategory;
use App\Models\Admin\Product\ParentCategory;
use App\Models\Admin\Solution\SolutionParentCategory;
use App\Models\Admin\Support\SupportParentCategory;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Handle the incoming request.
     */
    public function __invoke(Request $request)
    {   
        $parent_categories = ParentCategory::with('category')->where([['parent_category_status',1],['parent_category_delete',0]])->get();
        $solution_parent_categories = SolutionParentCategory::with('category')->where([['parent_category_status',1],['parent_category_delete',0]])->get();
        $support_parent_categories = SupportParentCategory::with('category')->where([['parent_category_status',1],['parent_category_delete',0]])->get();
        $partner_parent_categories = PartnerParentCategory::with('category')->where([['parent_category_status',1],['parent_category_delete',0]])->get();
        return view('frontend.pages.home.index',compact('parent_categories','solution_parent_categories','support_parent_categories','partner_parent_categories'));
    }
}
