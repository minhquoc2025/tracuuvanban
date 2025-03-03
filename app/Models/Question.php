<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Question extends Model
{
    use HasFactory;
    protected $table = 'question';
    protected $fillable = [
        'name',
        'answer1',
        'answer2',
        'answer3',
        'answer4',
        'answertrue',
        'catechild_id',
        'cate_id'
    ];
    public function ques_choice(){
        return $this->belongsTo('App\Models\Qchoice', 'question_id');    
    }
}
