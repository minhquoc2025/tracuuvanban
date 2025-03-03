<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Category extends Model
{
    use HasFactory;
    protected $table = 'category';
    public function cate_catechild(){
        return $this->hasMany('App\Models\Cate_child','cate_id');
    }
    public function cate_doccate(){
        return $this->hasMany('App\Models\Doccate','cate_id');
    }
    public function cate_doc(){
        return $this->hasMany('App\Models\Document','cate_id');
    }
    public function Delete(){
        $this->cate_catechild()->delete();
        $this->cate_doccate()->delete();
        $this->cate_doc()->delete();
        return parent::delete();
    }
    public function cate_question(){
        return $this->hasMany('App\Models\Question','cate_id');
    }
}
