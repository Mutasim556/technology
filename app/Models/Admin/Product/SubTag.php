<?php

namespace App\Models\Admin\Product;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SubTag extends Model
{
    use HasFactory;
    
    public function tag(){
        return $this->belongsTo(Tag::class,'tag_id','id');
    }
}
