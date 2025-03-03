<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;


class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'fullname',
        'email',
        'phone',
        'password',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
        'password' => 'hashed',
    ];
    protected $table = 'users';
    public function user_catechild(): BelongsToMany
    {
        return $this->belongsToMany('App\Models\Cate_child', 'question_choice','user_id', 'catechild_id')->withPivot('point', 'created_at');
    }
    public function user_doc(): HasMany
    {
        return $this->hasMany('App\Models\Document','user_id');
    }
    public function all_doc(): HasMany
    {
        return $this->hasMany('App\Models\Document');
    }
    public function user_choice(): hasMany
    {
        return $this->hasMany('App\Models\QuestionChoice','user_id');
    }
    public function user_role(): BelongsToMany
    {
        return $this->belongsToMany('App\Models\Role','role_user', 'user_id', 'role_id');
    }
    public function get_all_role(): BelongsToMany
    {
        return $this->belongsToMany('App\Models\Role');
    }
    public function hasRole($role)
    {
        return $this->user_role->contains('name', $role);
    }
    public function user_active(): HasOne
    {
        return $this->hasone('App\Models\UserActive','user_id');
    }
    public function checkActive()
    {
        $now = date_create(date('Y:m:d H:i:s'));
        if(empty($this->user_active->updated_at)){
            return false;
        }else{
            $userActive = $this->user_active->updated_at;
            $interval = date_diff($now, $userActive);
            if($interval->d == 0 && $interval->h == 0 && $interval->i < 10){
                return true;
            } else{
                return false;
            }
        }
    }
}
