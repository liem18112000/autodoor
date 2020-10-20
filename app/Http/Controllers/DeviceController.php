<?php

namespace App\Http\Controllers;

use App\Device;
use Illuminate\Http\Request;

class DeviceController extends Controller
{
    public function getStatus(Device $device){

        $status = $device->status;

        if($status == '1'){
            $device->update([
                'status' => '0'
            ]);
        }

        return $status;
    }

    public function setStatus(Device $device, $status)
    {
        return $device->update([
            'status' => $status
        ]);
    }
}
