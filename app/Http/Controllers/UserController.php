<?php

namespace App\Http\Controllers;

use App\Track;
use App\Device;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('register');
    }

    public function console(){
        return view('user.console',[
            'devices'   => Device::all()
        ]);
    }

    public function open($device_id)
    {
        $device = Device::where('id', $device_id)->first();

        $pass = 0;

        if($device){

            $pass = $device->update(['status' => 1]) ? '1' : '0';

            if($pass == '0')
            {
                Session::flash(
                    'message',
                        "Swal.fire(
                        'Oop...!',
                        'Update device status fail!',
                        'error'
                    )"
                );
                
            }else{

                Session::flash(
                    'message',
                        "Swal.fire(
                        'Done!',
                        'The device is activated!',
                        'success'
                    )"
                );

                Track::create([
                    'type'      => 'app',
                    'device_id' => $device_id,
                    'user_id'   => Auth::user()->id,
                    'pass'      => $pass,
                ]);
            }

            return redirect(route('user.console'));

        }

        Session::flash(
            'message',
            "Swal.fire(
                'Oop...!',
                'The device is not found!',
                'warning'
            )"
        );

        return redirect(route('user.console'));

    } 
}
