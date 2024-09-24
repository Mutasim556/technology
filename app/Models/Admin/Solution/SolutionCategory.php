<?php

namespace App\Models\Admin\Solution;

use App\Models\Admin;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SolutionCategory extends Model
{
    use HasFactory; 
    protected $table = 'solution_categories';

    public function admin(){
        return $this->belongsTo(Admin::class,'category_added_by','id');
    }

    public function parentCategory(){
        return $this->belongsTo(SolutionParentCategory::class,'parent_category_id','id');
    }

    public function subCategory(){
        return $this->hasMany(SolutionSubCategory::class,'category_id','id');
    }
}
