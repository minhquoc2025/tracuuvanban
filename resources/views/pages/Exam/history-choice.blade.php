@extends('welcome')
@section('main')
@php
    $stt=1;
@endphp
<div class="container-fluid">
    <div class="text-center">
        <h3>LỊCH SỬ THAM GIA</h3>
    </div>
    <div class="card">
        <div class="card-body">
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
                        <h6 class="fw-semibold mb-0">ĐIỂM</h6>
                      </th>
                      <th class="border-bottom-1 text-center">
                        <h6 class="fw-semibold mb-0">THỂ LOẠI</h6>
                      </th>
                      <th class="border-bottom-1 col-2 text-center">
                        <h6 class="fw-semibold mb-0">THỜI GIAN</h6>
                      </th>
                    </tr>
                  </thead>
                  <tbody class="fs-3">
                    @if ($get_choice)
                      @foreach ($get_choice as $item)
                        <tr>
                            <td class="border-bottom-0">
                                <h6 class="fw-semibold mb-0">
                                    @php
                                        echo $stt++;
                                    @endphp
                                </h6>
                            </td>
                            <td class="border-bottom-0 text-center">
                                <p class="mb-0 fw-normal">{{$item->queschoice_user->fullname}}</p>
                            </td>
                            <td class="border-bottom-0 text-center">
                                <p class="mb-0 fw-normal">{{$item->point}}</p>
                            </td>
                            <td class="border-bottom-0 text-center">
                                {{$item->queschoice_catechild->name}}
                            </td>
                            <td class="border-bottom-0 text-center">
                                {{$item->created_at}}
                            </td>
                            {{-- <td class="border-bottom-0 text-center">
                                <a href="{{ URL::to('user/manager/delete-user/'.$item->id)}}"><i class="ti ti-x fs-5" style="color: red"></i></a>
                                <a href="{{ URL::to('user/manager/g-detail-user/'.$item->id)}}"><i class="ti ti-edit fs-5" ></i></a>
                            </td> --}}
                        </tr>  
                      @endforeach  
                    @endif                   
                  </tbody>
                </table>
                {{ $get_choice->links('pagination::bootstrap-5') }}
            </div>
        </div>
    </div>
</div>
@endsection
