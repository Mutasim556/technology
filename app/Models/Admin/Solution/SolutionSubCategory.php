<?php

namespace App\Models\Admin\Solution;

use App\Models\Admin;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SolutionSubCategory extends Model
{
    use HasFactory; 
    protected $table = 'solution_sub_categories';

    public function admin(){
        return $this->belongsTo(Admin::class,'sub_category_added_by','id');
    }

    public function category(){
        return $this->belongsTo(SolutionCategory::class,'category_id','id');
    }

    public function parentCategory(){
        return $this->belongsTo(SolutionParentCategory::class,'parent_category_id','id');
    }
}
