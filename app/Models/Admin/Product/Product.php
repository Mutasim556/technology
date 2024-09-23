<?php

namespace App\Models\Admin\Product;

use App\Models\Admin\Settings\Warehouse;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    protected $table = 'products';

    public function productVariant(){
        return $this->hasMany(ProductVariant::class,'product_id','id');
    }

    public function warehousePrice(){
        return $this->hasMany(WarehousePrice::class,'product_id','id');
    }

    public function brand(){
        return $this->belongsTo(Brand::class,'brand_id','id');
    }
    public function parentCategory(){
        return $this->belongsTo(ParentCategory::class,'parent_category_id','id');
    }
    public function category(){
        return $this->belongsTo(Category::class,'category_id','id');
    }
    public function subCategory(){
        return $this->belongsTo(SubCategory::class,'sub_category_id','id');
    }

    public function unit(){
        return $this->belongsTo(Unit::class,'unit_id','id');
    }
}
