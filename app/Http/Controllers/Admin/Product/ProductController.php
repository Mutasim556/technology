<?php

namespace App\Http\Controllers\Admin\Product;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\Product\ProductStoreRequest;
use App\Http\Requests\Admin\Product\ProductUpdateRequest;
use App\Models\Admin\Product\Brand;
use App\Models\Admin\Product\Category;
use App\Models\Admin\Product\ParentCategory;
use App\Models\Admin\Product\Product;
use App\Models\Admin\Product\Unit;
use App\Models\Admin\Settings\Warehouse;
use Illuminate\Contracts\View\View;
use Illuminate\Http\Request;
use Illuminate\Http\Response; 
use Intervention\Image\Drivers\Gd\Driver;
use Intervention\Image\ImageManager;
use Milon\Barcode\DNS1D;
use Milon\Barcode\DNS2D;

class ProductController extends Controller
{
    public function __construct()
    {
       
        $this->middleware('permission:product-store,admin')->only(['create','store']);
        $this->middleware('permission:product-index,admin')->only(['index','show']);
        $this->middleware('permission:product-delete,admin')->only(['destroy']);
        $this->middleware('permission:product-update,admin')->only(['edit','update']);
        $this->middleware('permission:print-barcode,admin')->only(['printBarcode']);
    }
    /**
     * Display a listing of the resource.
     */
    public function index() :View
    {
        $products = Product::with('productVariant','warehousePrice','brand','category')->where('delete',0)->get();
       
        return view('backend.blade.product.index',compact('products'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create() : View
    {
        $brands = Brand::where('brand_status',1)->get();
        $categories = Category::where([['category_status',1],['category_delete',0]])->get();
        $parent_categories = ParentCategory::where([['parent_category_status',1],['parent_category_delete',0]])->get();
        $units = Unit::where([['unit_status',1]])->get();
        $products = Product::where([['status',1],['delete',0]])->select('name','id','price','is_variant')->get();
        $product_name = [];
        $product_prices = [];
        foreach($products as $key=>$product){
            array_push($product_name,$product->id."@".$product->name);
            $product_prices[$key]=$product->price;
        }

        $warehouses = Warehouse::where([['delete',0],['status',1]])->get();
        // dd(implode(',',$product_prices));
        return view('backend.blade.product.create',compact('brands','parent_categories','categories','units','product_name','product_prices','warehouses'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(ProductStoreRequest $data) : Response
    {
        if($data->store()){
            return  response([
                'title'=>__('admin_local.Congratulations !'),
                'text'=>__('admin_local.Product added successfully.'),
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
        $product = Product::with('brand','category','unit','warehousePrice','productVariant')->findOrFail($id);
        if($product->is_diffPrice==1){
            foreach($product->warehousePrice as $key=>$value){
                $product->warehousePrice[$key]->warehouse_name = $value->warehouse()->first()->name;
            }
        }

        return response([
            'product'=>$product,
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $editproduct = Product::with('brand','parentCategory','category','subCategory','unit','warehousePrice','productVariant')->findOrFail($id);
        if($editproduct->is_diffPrice==1){
            foreach($editproduct->warehousePrice as $key=>$value){
                $editproduct->warehousePrice[$key]->warehouse_name = $value->warehouse()->first()->name;
            }
        }
        
        $brands = Brand::where('brand_status',1)->get();
        $parent_categories = ParentCategory::where([['parent_category_status',1],['parent_category_delete',0]])->get();
        $units = Unit::where([['unit_status',1]])->get();
        $products = Product::where([['status',1],['delete',0]])->select('name','id','price','is_variant')->get();
        $product_name = [];
        $product_prices = [];
        foreach($products as $key=>$product){
            array_push($product_name,$product->id."@".$product->name);
            $product_prices[$key]=$product->price;
        }

        $warehouses = Warehouse::where([['delete',0],['status',1]])->get();

        if($editproduct->type=='combo'){
            $combop_id = explode(',',$editproduct->product_list);
            $combop_variant_id = explode(',',$editproduct->variant_list);
            $combop_qty_list = explode(',',$editproduct->qty_list);
            $combop_price_list = explode(',',$editproduct->price_list);
        }else{
            $combop_id = [];
            $combop_variant_id = [];
            $combop_qty_list = [];
            $combop_price_list = [];
        }
         
        return view('backend.blade.product.edit',compact('editproduct','brands','parent_categories','units','products','warehouses','product_name','product_prices','combop_id','combop_variant_id','combop_qty_list','combop_price_list'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(ProductUpdateRequest $data, string $id)
    {
        if($data->update($id)){
            return  response([
                'title'=>__('admin_local.Congratulations !'),
                'text'=>__('admin_local.Product update successfully.'),
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
    public function destroy(string $id) : Response
    {
        $product = Product::findOrFail($id);
        $product->delete = 1;
        $product->save();
        return response([
            'title'=>__('admin_local.Congratulations !'),
            'text'=>__('admin_local.Product deleted successfully.'),
            'confirmButtonText'=>__('admin_local.Ok'),
        ]);
    }



    //custom method
    public function generateProductCode(Request $data) : Response
    {
        $random = "";
        srand((float) microtime() * 1000000);
        $data = "123456123456789071234567890890";
        for ($i = 0; $i < 8; $i++) {
            $random .= substr($data, (rand() % (strlen($data))), 1);
        }
        return response($random);
    }

    public function getUnit(Request $data) :Response
    {
        $unit = Unit::where('id', $data->pram)->orWhere('unit_name', 'LIKE', '%' . $data->pram . '%')->select('id', 'unit_name')->first();
        return response($unit);
    }

    public function getVariant(Request $data) :Response
    {
        $product = Product::with('productVariant')->where('id',$data->pram)->first();
        if($product->is_variant){
            return response(['variant'=>$product->productVariant,'product'=>$product]);
        }else{
            return response(['variant'=>'No','product'=>$product]);
        }
        
    }

    public function printBarcode() : View {
        $products = Product::where([['status',1],['delete',0]])->select('name','id','price','is_variant')->get();
        $product_name = [];
        $product_prices = [];
        foreach($products as $key=>$product){
            array_push($product_name,$product->id."@".$product->name);
            $product_prices[$key]=$product->price;
        }
        return view('backend.blade.product.barcode.index',compact('product_name','product_prices'));
    }

    public function generateBarcode(Request $data){
        // dd($data->all());
        $barcode_details = []; 
        foreach($data->product_id as $key => $product_id){
            $product = Product::findOrFail($product_id);
            $barcode_details[$key]['barcode'] = DNS1D::getBarcodePNG($product->code,$product->barcode_symbology);
            $barcode_details[$key]['code'] = $product->code;
            $barcode_details[$key]['name'] =$product->name;
            $barcode_details[$key]['price'] =$product->price;
            $barcode_details[$key]['name_show'] =$data->name?1:0;
            $barcode_details[$key]['code_show'] =$data->code?1:0;
            $barcode_details[$key]['price_show'] =$data->price?1:0;
            $barcode_details[$key]['paper_size'] =$data->paper_size;
        }
        return response()->json([
            'barcode_details'=>$barcode_details,
        ]);
        // echo DNS1D::getBarcodeSVG('4445645656', 'C39')."<br>";
        // // echo DNS2D::getBarcodeHTML('4445645656', 'QRCODE');
        // echo DNS2D::getBarcodePNGPath('4445645656', 'PDF417')."<br>";
        // echo DNS2D::getBarcodeSVG('4445645656', 'DATAMATRIX');
        // echo '<img src="data:image/png;base64,' . DNS2D::getBarcodePNG('4', 'PDF417') . '" alt="barcode"   />';
    }
}
