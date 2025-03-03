<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Model;

class UserActive extends Model
{
    protected $table = 'user_active';
    use HasFactory;
    protected $fillable = [
        'user_id',
        'active',
    ];
    public function user()
    {
        return $this->belongsTo('App\Models\User', 'user_id');
    }
}

