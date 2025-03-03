<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Like_document extends Model
{
    use HasFactory;
    protected $table = 'like_document';
    public function like_doc_user(){
        return $this->hasMany('App\Models\Document','catechild_id');
    }
}
