<?php

namespace App\Http\Controllers\FrontendControllers;

use App\Http\Controllers\Controller;
use App\Models\Admin\Product\Product;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Handle the incoming request.
     */
    public function __invoke(Request $request)
    {
        $featured_products = Product::with('subCategory')->where([['status',1],['delete',0],['product_group','Featured']])->get();
        $new_products = Product::with('subCategory')->where([['status',1],['delete',0],['product_group','New']])->get();
        $popular_products = Product::where([['status',1],['delete',0],['product_group','Popular']])->get();
        return view('frontend.pages.home.index',compact('featured_products','new_products','popular_products'));
    }
}
