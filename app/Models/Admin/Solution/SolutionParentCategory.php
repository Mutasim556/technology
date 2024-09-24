<?php

namespace App\Models\Admin\Solution;

use App\Models\Admin;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SolutionParentCategory extends Model
{
    use HasFactory;
    protected $table = 'solution_parent_categories';

    public function admin(){
        return $this->belongsTo(Admin::class,'parent_category_added_by','id');
    }

    public function category(){
        return $this->hasMany(SolutionCategory::class,'parent_category_id','id');
    }

    public function subCategory(){
        return $this->hasMany(SolutionSubCategory::class,'parent_category_id','id');
    }
}
