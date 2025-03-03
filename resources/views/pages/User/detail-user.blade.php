@extends('welcome')
@section('main')
<div class="container-fluid">
    <div class="container-fluid">
        <div class="text-center">
            <h5 class="card-title fw-semibold mb-4">CHI TIẾT THÔNG TIN NGƯỜI DÙNG</h5>
        </div>
        <div class="card mx-9 w-75">
            <div class="card-body">
                <div class="row">
                    <div class="col">
                        <h3>Email</h3>
                    </div>
                    <div class="col d-flex flex-row">
                        <p class="fs-6">{{$get->email}}</p>
                        <a data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                            <i style="color: black" class="ti ti-edit fs-8"></i>
                        </a>
                    </div>
                    <div class="collapse mb-3" id="collapseExample">
                        <form action="{{URL::to('user/manager/change-email/'.$get->id)}}" method="POST">
                            {{ csrf_field() }}
                            <div class="row">
                                <div class="col-8">
                                    <input name="email" class="form-control" type="text" value="{{$get->email}}">
                                </div>
                                <div class="col-4 text-start">
                                    <button type="submit" class="btn btn-success">Lưu</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="row d-flex flex-row">
                    <div class="col">
                        <h3>Số điện thoại</h3>
                    </div>
                    <div class="col d-flex flex-row">
                        <p class="fs-6">{{$get->phone}}</p>
                        <a data-bs-toggle="collapse" href="#collapseExample1" role="button" aria-expanded="false" aria-controls="collapseExample">
                            <i style="color: black" class="ti ti-edit fs-8"></i>
                        </a>
                    </div>
                    <div class="collapse mb-3" id="collapseExample1">
                        <form action="{{URL::to('user/manager/change-phone/'.$get->id)}}" method="POST">
                            {{ csrf_field() }}
                            <div class="row">
                                <div class="col-8">
                                    <input name="phone" maxlength="9" minlength="9" class="form-control" type="text" value="{{$get->phone}}">
                                </div>
                                <div class="col-4 text-start">
                                    <button type="submit" class="btn btn-success">Lưu</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h3>Họ và tên</h3>
                    </div>
                    <div class="col d-flex flex-row">
                        <p class="fs-6">{{$get->fullname}}</p>
                        <a data-bs-toggle="collapse" href="#collapseExample2" role="button" aria-expanded="false" aria-controls="collapseExample">
                            <i style="color: black" class="ti ti-edit fs-8"></i>
                        </a>
                    </div>
                    <div class="collapse mb-3" id="collapseExample2">
                        <form action="{{URL::to('user/manager/change-fullname/'.$get->id)}}" method="POST">
                            {{ csrf_field() }}
                            <div class="row">
                                <div class="col-8">
                                    <input name="fullname" class="form-control" type="text" value="{{$get->fullname}}">
                                </div>
                                <div class="col-4 text-start">
                                    <button type="submit" class="btn btn-success">Lưu</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h3>Mật khẩu</h3>
                    </div>
                    <div class="col d-flex flex-row">
                        <p class="fs-6">******</p>
                        <a data-bs-toggle="collapse" href="#collapseExample3" role="button" aria-expanded="false" aria-controls="collapseExample">
                            <i style="color: black" class="ti ti-edit fs-8"></i>
                        </a>
                    </div>
                    <div class="collapse mb-3" id="collapseExample3">
                        <form action="{{URL::to('user/manager/change-password/'.$get->id)}}" method="POST">
                            {{ csrf_field() }}
                            <div class="row">
                                <div class="col-8">
                                    <input name="pass" class="form-control" type="password" value="{{$get->password}}">
                                </div>
                                <div class="col-4 text-start">
                                    <button type="submit" class="btn btn-success">Lưu</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h3>Quyền truy cập</h3>
                    </div>
                    <div class="col">
                        <div class="dropdown ">
                            <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
                                @foreach($get->user_role as $check_id)
                                    @foreach ($role as $value)
                                        @if($check_id->pivot->role_id == $value->id)
                                        {{-- lấy roleid của bản trung gian so sánh với list role --}}
                                        {{$value->name}}
                                        @endif
                                    @endforeach
                                @endforeach
                            </a>
                            @if ($data['u_r']->hasRole('Admin'))
                                <ul class="dropdown-menu form-control" aria-labelledby="dropdownMenuLink">
                                    @foreach ($role as $roleall)
                                    <li><a class="dropdown-item " href="{{ URL::to('user/manager/change-role-user/'.$get->id.'/'.$roleall->id)}}">{{$roleall->name}}</a></li>
                                    {{-- thay đổi quyền dựa theo id user --}}
                                    @endforeach
                                </ul>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection