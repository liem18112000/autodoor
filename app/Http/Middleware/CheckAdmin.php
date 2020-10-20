<?php

namespace App\Http\Middleware;

use Closure;

use Illuminate\Support\Facades\Auth;

use Illuminate\Support\Facades\Session;

class CheckAdmin
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
        $roles = Auth::user()->roles;
        foreach ($roles as $role) 
        {
            if($role->role_type == 1)
            {
                return $next($request);
            }
        }

        Session::flash(
            'message',
            "Swal.fire(
                'Oop...!',
                'You are not allowed to access!',
                'error'
            )"
        );

        return redirect()->back();
    }
}
