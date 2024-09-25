<?php

namespace App\Models\Admin\Support;

use App\Models\Admin;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SupportParentCategory extends Model
{
    use HasFactory;
    protected $table = 'support_parent_categories';

    public function admin(){
        return $this->belongsTo(Admin::class,'parent_category_added_by','id');
    }

    public function category(){
        return $this->hasMany(SupportCategory::class,'parent_category_id','id');
    }
}
