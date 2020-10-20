<?php

namespace App\Imports;

use App\Employee;
use Maatwebsite\Excel\Concerns\ToModel;
use Illuminate\Support\Facades\Hash;

class UserImport implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    //public $timestamps = false;

    public function model(array $row)
    {
        return new Employee([
            'id' => $row[0],
            'fullname' => $row[1],
            'classcode' => $row[2],
        ]);
    }
}
