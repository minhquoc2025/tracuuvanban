<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use App\Models\User;

class CheckRegister
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        $checkmail = User::where('email', $request->email)->first();
        if($request->pass != $request->pass_again){
            return back()->with('err',"Nhập lại mật khẩu không đúng");
        } elseif($checkmail){
            return back()->with('err',"Email đã tồn tại!");
        } else{
            return $next($request);
        }

    }
}
