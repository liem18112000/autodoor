<?php

namespace App\Http\Middleware;

use Closure;

use Illuminate\Support\Facades\Auth;

use Illuminate\Support\Facades\Session;

class RegisterVerify
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if(Auth::user()->status != '1')
        {
            Session::flash(
                'message',
                "Swal.fire(
                    'Oop...!',
                    'Your account has not been verified yet!',
                    'warning'
                )"
            );
            
            return redirect(route('welcome'));
        }
        return $next($request);
    }
}
