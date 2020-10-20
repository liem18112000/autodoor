<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{
    protected $primaryKey = 'id';
    protected $keyType = 'string';
    public $timestamps = false; //Không muốn default tạo colum created_at and updated_at
    public $incrementing = false; //nếu muốn primaryKey không tự tăng và không int

    protected $fillable = [
        'id', 'fullname', 'classcode', 'status'
    ];

    public function cards()
    {
        $this->hasMany('App\Card');
    }
}
