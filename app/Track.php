<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Track extends Model
{

    protected $guarded = [];

    public function device()
    {
        return $this->belongsTo('App\Device');
    } 

    public function user()
    {
        return $this->belongsTo('App\User');
    }

    public function card()
    {
        return $this->belongsTo('App\Card');
    }

}
