<?php

namespace App\Http\Controllers;

use App\Track;
use App\Employee;
use App\Card;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class TrackController extends Controller
{
    public function cardValidate($uid, $device_id)
    {
        if (Card::where('id', $uid)->exists()) {

            request()->merge([
                'card_id'   => $uid,
                'pass'      => '1',
            ]);

            $this->store(request(), $device_id);

            return Employee::find(Card::where('id', $uid)->first()->employee_id)->fullname;

        }else{

            request()->merge([
                'card_id'   => $uid,
                'pass'      => '0',
            ]);

            $this->store(request(), $device_id);

            return 'NONAME';
        }
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('track.index',[
            'tracks' => Track::all()
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    protected function store(Request $request, $device_id)
    {
        return Track::create([
            'card_id'   => $request->card_id,
            'pass'      => $request->pass,
            'device_id' => $device_id,
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Track  $track
     * @return \Illuminate\Http\Response
     */
    public function show(Track $track)
    {
        return view('track.show', [
            'track'      => $track
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Track  $track
     * @return \Illuminate\Http\Response
     */
    public function destroy(Track $track)
    {
        //
    }
}
