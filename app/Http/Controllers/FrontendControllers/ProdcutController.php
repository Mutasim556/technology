<?php

namespace App\Http\Controllers\FrontendControllers;

use App\Http\Controllers\Controller;
use App\Models\Admin\Product\Category;
use App\Models\Admin\Product\SubCategory;
use Illuminate\Contracts\View\View;
use Illuminate\Http\Request;

class ProdcutController extends Controller
{
    public function index() : View{
       
        
        if(request()->category){
            $category = Category::with('parentCategory','subCategory')->where('id',request()->id)->first(); 
            return view('frontend.pages.products.index',compact('category'));
        }elseif(request()->subcategory){
            $subcategory = SubCategory::with('parentCategory','category','product')->where('id',request()->id)->first(); 
            $subcategories = SubCategory::where('category_id',$subcategory->category_id)->get();
            return view('frontend.pages.products.index',compact('subcategory','subcategories'));
        }
        
    }
}
