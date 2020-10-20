<?php

namespace App\Exports;

use App\Card;
use Maatwebsite\Excel\Concerns\FromCollection;

class CardsExport implements FromCollection
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return Card::all();
    }
}
