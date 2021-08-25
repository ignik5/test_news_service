<?php

namespace App;


use Illuminate\Database\Eloquent\Model;

class News extends Model
{

    protected $fillable = ['title','text','image','description','isbrannoe','id_tags','city_id'];
    public function tags()
        {
        return $this->hasMany(Tags::class,'id', 'id_tags')->first();
        }
    Public function subscribe(){
        return $this->belongsToMany(User::class, 'users_news', 'news_id', 'user_id')->get();
    }
}
