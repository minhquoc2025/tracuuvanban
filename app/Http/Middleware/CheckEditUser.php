<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use App\Models\User;

class CheckEditUser
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        $checkemail = User::where('email', $request->email)->first();
        $checkphone = User::where('phone', $request->phone)->first();
        if($checkemail){
            return back()->with('err',"Email đã tồn tại, vui lòng sử dụng email khác!");
        }elseif($checkphone){
            return back()->with('err',"Số điện thoại đã tồn tại, vui lòng sử dụng số điện thoại khác!");
        }
        else{
            return $next($request);
        }
    }
}
