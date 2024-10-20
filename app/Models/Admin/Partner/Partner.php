<?php

namespace App\Models\Admin\Partner;

use App\Models\Admin;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Partner extends Model
{
    use HasFactory;
    protected $table = 'partners';

    public function admin(){
        return $this->belongsTo(Admin::class,'category_added_by','id');
    }

    public function parentCategory(){
        return $this->belongsTo(PartnerParentCategory::class,'parent_category_id','id');
    }
    public function category(){
        return $this->belongsTo(PartnerCategory::class,'category_id','id');
    }
}
