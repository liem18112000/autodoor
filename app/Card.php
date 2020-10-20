<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Card extends Model
{
    protected $guarded = [];
    protected $primaryKey = 'id';
    protected $keyType = 'string';

    protected $fillable = [
        'id', 'employee_id'
    ];

    public function employee()
    {
        $this->belongsTo('App\Employee', 'employee_id');
    }
}
