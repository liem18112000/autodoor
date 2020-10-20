<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/validate/{uid}/{device_id}', 'TrackController@cardValidate');

Route::get('/device/get-status/{device}', 'DeviceController@getStatus')->name('device.getStatus');

Route::get('/device/set-status/{device}/{status}', 'DeviceController@setStatus')->name('device.setStatus');
