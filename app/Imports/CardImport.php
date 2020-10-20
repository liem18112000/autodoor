<?php

namespace App\Imports;

use App\Card;
use Maatwebsite\Excel\Concerns\ToModel;
use Illuminate\Support\Facades\Hash;

class CardImport implements ToModel
{
    /**
     * @param array $row
     *
     * @return \Illuminate\Database\Eloquent\Model|null
     */
    //public $timestamps = false;

    public function model(array $row)
    {
        return new Card([
            'id' => $row[0],
            'employee_id' => $row[1],
        ]);
    }
}
