<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Document_images extends Model
{
    use HasFactory;
    protected $table = 'document_images';
    public function img_doc()
    {
        return $this->belongsTo('App\Models\Category','doc_id');
    }
}
