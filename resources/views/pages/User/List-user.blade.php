@extends('welcome')
@section('main')
@php
    $stt=1;
@endphp
<div class="container-fluid">
    <h3>DANH SÁCH TÀI KHOẢN</h3>
    <div class="card">
      <div class="card-body">
          <div class="row">
            <div class="col-2">
              <h5 class="card-title fw-semibold mb-4">Chức năng: </h5>
            </div>
            <div class="col-1">
              <a href="{{ URL::to('user/manager/g-add-user')}}" data-bs-toggle="tooltip" data-bs-placement="top" title="Thêm người dùng"><i class="ti ti-user-plus  fs-8"style="color: green"></i></a>
            </div>
            <div class="col-1">
              <a href="{{ URL::to('user/manager/export-user/')}}" data-bs-toggle="tooltip" data-bs-placement="top" title="Xuất toàn bộ người dùng ra file Excel"><i class="ti ti-file-arrow-right fs-8" style="color: red"></i></a>
            </div>
            <div class="col">
              <input class="form-control w-50" type="text" class="form-controller" id="search-user" name="search" placeholder="Tìm kiếm...">
            </div>
          </div>
          <div class="table-responsive">
            <table class="table text-nowrap mb-0 align-middle">
              <thead class="text-dark fs-4">
                <tr>
                  <th class="border-bottom-1 col-1r">
                    <h6 class="fw-semibold mb-0">STT</h6>
                  </th>
                  <th class="border-bottom-1 text-center">
                    <h6 class="fw-semibold mb-0">TÊN NGƯỜI DÙNG</h6>
                  </th>
                  <th class="border-bottom-1 text-center">
                    <h6 class="fw-semibold mb-0">EMAIL</h6>
                  </th>
                  <th class="border-bottom-1 text-center">
                    <h6 class="fw-semibold mb-0">SĐT</h6>
                  </th>
                  <th class="border-bottom-1 col-2 text-center">
                    <h6 class="fw-semibold mb-0">QUYỀN</h6>
                  </th>
                  <th class="border-bottom-1 col-1 text-center">
                    <h6 class="fw-semibold mb-0">TRẠNG THÁI</h6>
                  </th>
                  <th class="border-bottom-1 col-1">
                    <h6 class="fw-semibold mb-0"></h6>
                  </th>
                </tr>
              </thead>
              <tbody class="fs-3">
                @if ($user)
                  @foreach ($user as $item)
                    <tr>
                      <td class="border-bottom-0">
                          <h6 class="fw-semibold mb-0">
                              @php
                                  echo $stt++;
                              @endphp
                          </h6>
                      </td>
                      <td class="border-bottom-0">
                          <p class="mb-0 fw-normal">{{$item->fullname}}</p>
                      </td>
                      <td class="border-bottom-0">
                          <p class="mb-0 fw-normal">{{$item->email}}</p>
                      </td>
                      <td class="border-bottom-0 text-center">
                        <p class="mb-0 fw-normal">
                          @php
                            $phone = $item->phone;
                            if($phone){
                              echo $phone;
                            } else{
                              echo "Trống";
                            }
                          @endphp
                        </p>
                      </td>
                      <td class="border-bottom-0 text-center">
                        <div class="dropdown ">
                          <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
                            @foreach($item->user_role as $check_id)
                              @foreach ($role as $value)
                                @if($check_id->pivot->role_id == $value->id)
                                {{-- lấy roleid của bản trung gian so sánh với list role --}}
                                  {{$value->name}}
                                @endif
                              @endforeach
                            @endforeach
                          </a>
                          <ul class="dropdown-menu form-control" aria-labelledby="dropdownMenuLink">
                            @foreach ($role as $roleall)
                              <li><a class="dropdown-item " href="{{ URL::to('user/manager/change-role-user/'.$item->id.'/'.$roleall->id)}}">{{$roleall->name}}</a></li>
                              {{-- thay đổi quyền dựa theo id user --}}
                            @endforeach
                          </ul>
                        </div>
                      </td>
                      <td class="border-bottom-0 text-center">
                        {{-- @php
                          $now = date_create(date('Y:m:d H:i:s'));
                          if ( == null) {
                            $interval = 'Chưa kích hoạt';
                          } else {
                            $userActive = $item->user_active->updated_at;
                            $interval = date_diff($now, $userActive);
                          }
                        @endphp --}}
                        @if  ($item->checkActive())
                          <i class="ti ti-network fs-6"style="color: green"></i>
                        @else
                          <i class="ti ti-network-off fs-6"style="color: gray"></i>
                          @php
                          if (empty($item->user_active->updated_at)) {
                            echo "Chưa kích hoạt";
                          } else {
                            $now = date_create(date('Y:m:d H:i:s'));
                            $userActive = $item->user_active->updated_at;
                            $interval = date_diff($now, $userActive);
                            echo $interval->format('%d ngày,%h giờ, %i phút trước');
                          }
                          @endphp
                        @endif
                      </td>
                      <td class="border-bottom-0">
                        <a href="{{ URL::to('user/manager/delete-user/'.$item->id)}}"><i class="ti ti-x fs-5" style="color: red"></i></a>
                        <a href="{{ URL::to('user/manager/g-detail-user/'.$item->id)}}"><i class="ti ti-edit fs-5" ></i></a>
                      </td>
                    </tr>  
                  @endforeach  
                @endif                   
              </tbody>
            </table>
            {{ $user->links('pagination::bootstrap-5') }}
          </div>
      </div>
    </div>
</div>
@endsection