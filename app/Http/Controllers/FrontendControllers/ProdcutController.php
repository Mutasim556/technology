<?php

namespace App\Http\Controllers\FrontendControllers;

use App\Http\Controllers\Controller;
use App\Models\Admin\Product\Category;
use Illuminate\Contracts\View\View;
use Illuminate\Http\Request;

class ProdcutController extends Controller
{
    public function index() : View{
        $category = '';
        $compact_data = [];
        if(request()->category){
            $category = Category::with('parentCategory')->where('id',request()->id)->first();
            array_push($compact_data,$category);
        }
        return view('frontend.pages.products.index',compact('compact_data'));
    }
}
