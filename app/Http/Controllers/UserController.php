<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Http\Middleware\CheckRegister;
use App\Http\Requests\StoreUserRequest;
use Illuminate\Support\Facades\Auth;
use Session;
use DateTime;
use Excel;

use App\Models\User;
use App\Models\UserActive;
use App\Models\Like_document;
use App\Models\Role;
use App\Models\RoleUser;
use App\Models\Category;
use App\Exports\ExportUser;

class UserController extends Controller
{
    public function __construct(){
        $this->middleware(function ($request, $next) {
            $data = [
                'category' => Category::all(),
                'u_r' => User::find(Session('id_user')),
            ];
            view()->share('data', $data);
           return $next($request);
        });
    }
    public function login(){
        return view('pages.user.login');
    }
    public function handle_login(Request $request){
        $credentials = $request->only('email', 'password');
        $remember = $request->has('remember');
    
        if (Auth::attempt($credentials, $remember)) {
            // Đăng nhập thành công
            $request->session()->put('id_user', Auth::user()->id);
            $request->session()->put('user', Auth::user()->fullname);
            return redirect()->intended('/');
        } else{
            // Đăng nhập thất bại
            return redirect()->back()->with('err',"Mật khẩu đăng nhập không chính xác!");
        }
    }
    public function logout(){
        Session::put('id_user', Null);
        Session::put('user', Null);
        return redirect()->route('login');
    }
    public function register(){
        return view('pages.user.register');
    }
    public function handle_register(Request $request){
        $add = new User;
        $add->fullname = $request->name;
        $add->email = $request->email;
        $add->password = Hash::make($request->pass);
        $add->save();
        return redirect()->route('login')->with('pass',"Đăng ký tài khoản thành công!");
    }
    public function list_user(){
        $user = User::where('id', Session::get('id_user'))->first();
        if ($user->hasRole('Admin')) {
            $role = Role::all();
            $user = User::paginate(10);
            return view('pages.user.list-user', compact('user'))->with('role', $role);
        } else {
            return redirect()->back()->with('err',"Bạn không có quyền truy cập");
        }
    }
    public function get_add_user(){
        $role = Role::all();
        return view('pages.user.add-user')->with('role', $role);
    }
    public function handle_add_user(StoreUserRequest $request){
        $add = User::create($request->validated());
        RoleUser::create([
            'user_id' => $add->id,
            'role_id' => $request->role_id
        ]);
        return redirect()->back()->with('pass', "Thêm người dùng thành công!");
    }
    public function delete_user($user_id){
        $user = User::find($user_id);
        $user->delete();
        Like_document::where('user_id', $user_id)->delete();
        return redirect()->back()->with('pass', "Xóa thành công!");
    }
    public function get_detail_user($user_id){
        $role = Role::all();
        $get = User::find($user_id);
        return view('pages.user.detail-user', compact('get'))->with('role', $role);
    }
    public function get_edit_user($user_id){
        $role = Role::all();
        $get = User::find($user_id);
        return view('pages.user.add-user', compact('get'))->with('role', $role);
    }
    public function change_role_user($user_id, $role_id){
        $check = RoleUser::where('user_id',$user_id)->first();
        $check->role_id = $role_id;
        $check->update();
        return redirect()->back()->with('pass',"Thay đổi quyền người dùng thành công!");
    }
    public function handle_edit_user($user_id, Request $request){
        $user = User::find($user_id);
        $check = $request->pass;
        if($check){
            $user->password = Hash::make($request->pass);
            $user->update();
        } else{
            $user->fullname = $request->fullname ?? $user->fullname;
            $user->email = !empty($request->email) ? $request->email : $user->email;
            $user->phone = $request->phone ?? $user->phone;
            $user->update();
        }
        
        return redirect()->back()->with('pass', "Thay đổi thông tin thành công!");
    }
    public function export_user(Request $request){
        return Excel::download(new ExportUser, 'user.xlsx');
    }
    public function search_user(Request $request){
        if($request->ajax()){
            $output = '';
            $user = User::where('fullname', 'LIKE', '%' . $request->search . '%')->get();
            if($user){
                $stt =1;
                foreach ($user as $key => $value) {
                    $linkdelete = "../manager/delete-user/$value->id";
                    $textdelete = "<i class='ti ti-x fs-5' style='color: red'></i>";
                    $linkedit = "../manager/g-detail-user/$value->id";
                    $textedit = "<i class='ti ti-edit fs-5' ></i>";
                    foreach ($value->user_role as $role){
                        $name_role = $role->name;
                    }
                    if($value->checkActive()){
                        $online = "<i class='ti ti-network fs-6'style='color: green'></i>";
                    } else{
                        $online = "<i class='ti ti-network-off fs-6'style='color: gray'></i>";
                    }
                    $output .= '<tr>
                    <td>'. $stt++ .'</td>
                    <td>'. $value->fullname .'</td>
                    <td>'. $value->email .'</td>
                    <td>'. $value->phone .'</td>
                    <td>
                        <div class="dropdown">
                            <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
                                '.$name_role.'
                            </a>
                            <ul class="dropdown-menu form-control" aria-labelledby="dropdownMenuLink">
                            
                                <li>
                                    <a class="dropdown-item " href=""></a>
                                </li>
                            </ul>
                        </div>
                    </td>
                    <td class="text-center">'. $online .' </td>
                    <td>' . sprintf('<a href="%s">%s</a>', $linkdelete, $textdelete) . ' ' . sprintf('<a href="%s">%s</a>', $linkedit, $textedit) . '</td>
                    </tr>';
                }
            }  
            return Response($output); 
        }
    }
}
