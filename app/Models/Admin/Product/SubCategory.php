<?php

namespace App\Models\Admin\Product;

use App\Models\Admin;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SubCategory extends Model
{
    use HasFactory;
    protected $table = 'sub_categories';

    public function admin(){
        return $this->belongsTo(Admin::class,'sub_category_added_by','id');
    }

    public function category(){
        return $this->belongsTo(Category::class,'category_id','id');
    }

    public function parentCategory(){
        return $this->belongsTo(ParentCategory::class,'parent_category_id','id');
    }
    
}
