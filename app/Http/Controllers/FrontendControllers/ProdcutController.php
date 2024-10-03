<?php

namespace App\Http\Controllers\FrontendControllers;

use App\Http\Controllers\Controller;
use App\Models\Admin\Product\Category;
use App\Models\Admin\Product\Product;
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

    public function details(Request $data):View{
        if($data->product_id){
            $product = Product::with('parentCategory','category','subCategory','productVariant','brand','unit')->where('id',$data->product_id)->first();
            $subcategories = SubCategory::where('category_id',$product->category_id)->get();
            $products = Product::where([['sub_category_id',$product->sub_category_id]])->get();
            return view('frontend.pages.products.details',compact('product','subcategories','products'));
        }
        
    }
}
