<?php

namespace App\Http\Controllers;

use App\Card;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use App\Employee;

class CardController extends Controller
{

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create($employee_id)
    {
        return view('card.create', [
            'employee' => Employee::find($employee_id)
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        Card::create([
            'id'            => $request->id,
            'employee_id'   => $request->employee_id,
        ]);

        return redirect(route('employees.index'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Card  $card
     * @return \Illuminate\Http\Response
     */
    public function edit($employee_id, Card $card)
    {
        return view('card.edit',[
            'employee'  => Employee::find($employee_id),
            'card'      => $card
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Card  $card
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $employee_id,  Card $card)
    {
        Card::where('employee_id', $employee_id)->update([
            'status'   => '0'
        ]);

        Card::create([
            'employee_id' => $employee_id,
            'id'        => $request->id
        ]);

        return redirect(route('employees.index'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Card  $card
     * @return \Illuminate\Http\Response
     */
    public function destroy(Card $card)
    {
        $card->update([
            'status'   => '0'
        ]);

        return redirect(route('employees.index'));
    }
}
