<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\Pivot;

class Qchoice extends Pivot
{
    use HasFactory;
    protected $table = 'choice';
    public function choice_question(){
        return $this->belongsTo('App\Models\Question', 'question_id'); 
    }
}
