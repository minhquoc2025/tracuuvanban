<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Doccate extends Model
{
    use HasFactory;
    protected $table = 'doccate';
    public function doccate_cate(){
        return $this->belongsTo('App\Models\Category','cate_id');
    }
    public function doccate_catechild(){
        return $this->belongsTo('App\Models\Cate_child','catechild_id');
    }
    public function doccate_doc(){
        return $this->hasMany('App\Models\Document','doccate_id');
    }
    
}
