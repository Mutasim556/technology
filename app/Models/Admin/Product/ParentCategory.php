<?php

namespace App\Models\Admin\Product;

use App\Models\Admin;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ParentCategory extends Model
{
    use HasFactory;
    protected $table = 'parent_categories';

    public function admin(){
        return $this->belongsTo(Admin::class,'parent_category_added_by','id');
    }

    public function category(){
        return $this->hasMany(Category::class,'parent_category_id','id');
    }

    public function subCategory(){
        return $this->hasMany(SubCategory::class,'parent_category_id','id');
    }
}
