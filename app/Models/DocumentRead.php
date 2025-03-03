<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DocumentRead extends Model
{
    use HasFactory;
    protected $table = 'document_read';
    protected $fillable = [
        'text_id',
        'user_id',
        'read_count',
    ];
}
