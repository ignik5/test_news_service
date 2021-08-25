<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class users_news extends Model
{
    protected $fillable = ['user_id', 'news_id'];
}
