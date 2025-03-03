<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class QuestionChoice extends Model
{
    use HasFactory;
    protected $table = 'question_choice';
    public function queschoice_user(){
        return $this->belongsTo('App\Models\User','user_id');    
    }
    public function queschoice_catechild(){
        return $this->belongsTo('App\Models\Cate_child', 'catechild_id');    
    }

}
