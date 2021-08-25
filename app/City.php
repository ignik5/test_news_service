<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class City extends Model
{
    protected $fillable = ['name'];

    public function news()
    {
        return $this->belongsTo(News::class, 'id', 'id_city')->orwhere('id_city','=',0)->paginate(5);
    }
}
