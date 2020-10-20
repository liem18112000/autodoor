<?php

namespace App\Http\Controllers;

use App\Notifications\RegisterFeedback;
use App\Request as UserRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class RequestController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('register');
        $this->middleware('admin');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('request.index',[
            'requests'  => UserRequest::all()
        ]);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function old()
    {
        return view('request.old', [
            'requests'  => UserRequest::whereNotNull('authority')->get()
        ]);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function new()
    {
        return view('request.new', [
            'requests'  => UserRequest::whereNull('authority')->get()
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function accept(UserRequest $userRequest)
    {
        $userRequest->update([
            'verified'  => '1',
            'authority' => Auth::user()->id,
        ]);

        $userRequest->user->update(['status' => '1']);

        $userRequest->user->notify(new RegisterFeedback($userRequest->user, $userRequest));

        return redirect()->route('admin.request.index');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function reject(UserRequest $userRequest)
    {
        $userRequest->update([
            'verified'  => '0',
            'authority' => Auth::user()->id,
        ]);

        $userRequest->user->notify(new RegisterFeedback($userRequest->user, $userRequest));

        return redirect()->route('admin.request.index');
    }
}
