<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Cate_child extends Model
{
    use HasFactory;
    protected $table = 'cate_child';
    public function catechild_cate()
    {
        return $this->belongsTo('App\Models\Category','cate_id');
    }
    public function catechild_doccate(){
        return $this->hasMany('App\Models\Doccate','catechild_id');
    }
    public function catechild_doc(){
        return $this->hasMany('App\Models\Document','catechild_id');
    }
    public function Delete(){
        
        $this->catechild_doccate()->delete();
        return parent::delete();
    }
    public function catechild_user(): BelongsToMany{
        return $this->belongsToMany('App\Models\User', 'question_choice','catechild_id', 'user_id');
    }
    public function catechild_question(){
        return $this->hasMany('App\Models\Question','catechild_id');
    }
}
