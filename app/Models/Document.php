<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
class Document extends Model
{
    use HasFactory;
    protected $table = 'document';
    public function doc_cate()
    {
        return $this->belongsTo('App\Models\Category','cate_id');
    }
    public function doc_catechild(){
        return $this->belongsTo('App\Models\Cate_child','catechild_id');
    }
    public function doc_doccate(){
        return $this->belongsTo('App\Models\Doccate','doccate_id');
    }
    public function doc_docdetail(){
        return $this->hasMany('App\Models\Document_images','doc_id');
    }
    public function doc_user()
    {
        return $this->belongsTo('App\Models\User','user_id');
    }
    public function like_user(): BelongsToMany
    {
        return $this->belongsToMany('App\Models\User','like_document','doc_id','user_id');
    }
    public function like_doc($user): BelongsToMany
    {
        return $this->like_user()->wherePivot('user_id', $user);
    }
    public function doc_allread(){
        return $this->belongsToMany('App\Models\User','document_read','text_id', 'user_id')->withPivot('read_count')->withTimestamps();
    }
    public function scopeRelatedByCategory($query, $cate, $excludeId = null)
    {
        return $query->where('cate_id', $cate)
            ->when($excludeId, function ($query) use ($excludeId) {
                $query->where('id', '!=', $excludeId);
            });
    }
}
