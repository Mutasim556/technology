<?php

namespace App\Models\Admin\Solution;

use App\Models\Admin;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Solution extends Model
{
    use HasFactory;
    protected $table = 'solutions';

    public function admin(){
        return $this->belongsTo(Admin::class,'category_added_by','id');
    }

    public function parentCategory(){
        return $this->belongsTo(SolutionParentCategory::class,'parent_category_id','id');
    }
    public function category(){
        return $this->belongsTo(SolutionCategory::class,'category_id','id');
    }

    public function subCategory(){
        return $this->belongsTo(SolutionSubCategory::class,'sub_category_id','id');
    }

    public function solutionDetails(){
        return $this->hasOne(SolutionDetail::class,'solution_id','id');
    }
}
