<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use Session;
use App\Models\UserActive;

class CheckLogin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        $user = $request->session()->get('id_user');
        if(empty($user)){
            return redirect()->route('login');
        } else{
            $checkActive = UserActive::where('user_id', $user)->first();
            if(isset($checkActive)){
                $checkActive->active = rand(10,100);
                $checkActive->save();
            } else{
                $add = new UserActive;
                $add->user_id = $user;
                $add->active = 1;
                $add->save();
            }
            return $next($request);
        }
    }
}
