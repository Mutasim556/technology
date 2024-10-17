<?php

namespace App\Models\Admin\Support;

use App\Models\Admin;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Support extends Model
{
    use HasFactory; 
    protected $table = 'supports';

    public function admin(){
        return $this->belongsTo(Admin::class,'category_added_by','id');
    }

    public function parentCategory(){
        return $this->belongsTo(SupportParentCategory::class,'parent_category_id','id');
    }
    public function category(){
        return $this->belongsTo(SupportCategory::class,'category_id','id');
    }

}
