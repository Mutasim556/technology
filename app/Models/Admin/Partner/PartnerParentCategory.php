<?php

namespace App\Models\Admin\Partner;

use App\Models\Admin;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PartnerParentCategory extends Model
{
    use HasFactory;
    protected $table = 'partner_parent_categories';

    public function admin(){
        return $this->belongsTo(Admin::class,'parent_category_added_by','id');
    }

    public function category(){
        return $this->hasMany(PartnerCategory::class,'parent_category_id','id');
    }
}
