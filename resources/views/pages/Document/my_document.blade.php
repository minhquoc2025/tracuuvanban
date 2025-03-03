@extends('welcome')
@section('main')
<div class="container-fluid">
    <div class="text-center">
        <h3>VĂN BẢN CỦA TÔI</h3>
    </div>
    <div class="card">
        <div class="card-body">
            <h5 class="card-title fw-semibold mb-4">Danh sách văn bản, tài liệu yêu thích</h5>
            <div class="table-responsive">
                <table class="table table-hover text-nowrap mb-0 align-middle">
                    <thead class="text-dark fs-4">
                        <tr>
                            <th class="border-bottom-2 col-1">
                                <h6 class="fw-semibold mb-0">STT</h6>
                            </th>
                            <th class="border-bottom-2 col-1">
                                <h6 class="fw-semibold mb-0 col-1">Mã số văn bản</h6>
                            </th>
                            <th class="border-bottom-2 col-1">
                                <h6 class="fw-semibold mb-0">Loại văn bản</h6>
                            </th>
                            <th class="border-bottom-2 text-center">
                                <h6 class="fw-semibold mb-0">Tên văn bản</h6>
                            </th>
                            <th class="border-bottom-2 col-1">
                                <h6 class="fw-semibold mb-0 col-1">Chức năng</h6>
                            </th>
                        </tr>
                    </thead>
                    @php
                        $stt = 1;
                    @endphp 
                    <tbody> 
                        @if (count($data['document'])>0)
                            @foreach ($data['document'] as $item)
                            @if ($item->like_user->isNotEmpty())
                            @foreach ($item->like_user as $document)
                                @if ($document->pivot->user_id == Session('id_user'))
                                <tr>
                                    <td class="border-bottom-0">
                                        <h6 class="fw-semibold mb-0">{{ $stt++ }}</h6>
                                    </td>
                                    <td>
                                        <h6>{{$item->document_code}}</h6>
                                    </td>
                                    <td>
                                        <h6>{{$item->type}}</h6>
                                    </td>
                                    <td class="border-bottom-0 text-wrap text-break" >
                                        <a href="{{ URL::to('document/doc/g-detail/'.$item->id)}}">
                                            <h6 class="fw-semibold mb-1">{{ $item->title}}</h6>
                                            <span class="fw-normal text-dark">
                                            @php
                                                $substring= substr($item->created_at, 0, 11);
                                                $formattedDate = date('d/m/Y', strtotime($substring));
                                                echo $formattedDate;
                                            @endphp
                                            </span>  
                                        </a>                        
                                    </td>
                                    <td class="border-bottom-0 fs-8 text-center">
                                        @if ($document->pivot->user_id == Session('id_user') )
                                             @foreach ($item->like_doc(Session('id_user')) as $role)
                                                <a class="text-warning" href="{{ URL::to('document/doc/un-like-doc/'.$item->id) }}"><i class="ti ti-heart"></i></a>
                                            @endforeach
                                        @else
                                            <a href="{{ URL::to('document/doc/like-doc/'.$item->id) }}"><i class="ti ti-heart-plus"></i></a>
                                        @endif
                                        @if ($data['u_r']->hasRole('Admin'))
                                        <a onclick="delete()" class="text-danger" href="{{ URL::to('document/doc/delete-doc/'.$item->id)}}"><i class="ti ti-x"></i></a>
                                        <a href="{{ URL::to('document/doc/g-edit-doc/'.$item->id)}}"><i class="ti ti-edit"></i></a>
                                        @endif
                                    </td>
                                </tr>
                                @endif
                            @endforeach
                            @endif
                            @endforeach
                        @else
                            <tr>
                                <td></td>
                                <td></td>
                                <td class="text-center">
                                    <h3>Chưa có văn bản, tài liệu nào được thêm vào</h3>
                                </td>
                                <td></td>
                                <td></td>
                            </tr> 
                        @endif
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <div class="card">
        <div class="card-body">
            <h5 class="card-title fw-semibold mb-4">Danh sách văn bản, tài liệu đã đăng</h5>
            <div class="table-responsive">
                <table class="table table-hover text-nowrap mb-0 align-middle">
                    <thead class="text-dark fs-4">
                        <tr>
                            <th class="border-bottom-2 col-1">
                                <h6 class="fw-semibold mb-0">STT</h6>
                            </th>
                            <th class="border-bottom-2 col-1">
                                <h6 class="fw-semibold mb-0 col-2">Mã số văn bản</h6>
                            </th>
                            <th class="border-bottom-2 col-1">
                                <h6 class="fw-semibold mb-0 col-2">Loại văn bản</h6>
                            </th>
                            <th class="border-bottom-2 text-center">
                                <h6 class="fw-semibold mb-0">Tên văn bản</h6>
                            </th>
                            <th class="border-bottom-2 text-center">
                                <h6 class="fw-semibold mb-0 col-1">Chức năng</h6>
                            </th>
                        </tr>
                    </thead>
                    @php
                        $stt = 1;
                    @endphp 
                    <tbody>
                        @if ($data['u_r']->all_doc->count()>0)
                            @foreach ($data['u_r']->all_doc as $item)
                                <tr>
                                    <td class="border-bottom-0">
                                        <h6 class="fw-semibold mb-0">{{ $stt++ }}</h6>
                                    </td>
                                    <td>
                                        <h6>{{$item->document_code}}</h6>
                                    </td>
                                    <td>
                                        <h6>{{$item->type}}</h6>
                                    </td>
                                    <td class="border-bottom-0 text-wrap text-break" >
                                        <a href="{{ URL::to('document/doc/g-detail/'.$item->id)}}">
                                            <h6 class="fw-semibold mb-1">{{ $item->title}}</h6>
                                            <span class="fw-normal text-dark">
                                            @php
                                                $substring= substr($item->created_at, 0, 11);
                                                $formattedDate = date('d/m/Y', strtotime($substring));
                                                echo $formattedDate;
                                            @endphp
                                            </span>  
                                        </a>                        
                                    </td>
                                    <td class="border-bottom-0 fs-8 text-center">
                                        @if ($item->like_user->contains($data['u_r']->id))
                                            <a class="text-warning" href="{{ URL::to('document/doc/un-like-doc/'.$item->id) }}"><i class="ti ti-heart"></i></a>
                                        @else
                                            <a href="{{ URL::to('document/doc/like-doc/'.$item->id) }}"><i class="ti ti-heart-plus"></i></a>
                                        @endif
                                        @if ($data['u_r']->hasRole('Admin'))
                                        <a onclick="delete()" class="text-danger" href="{{ URL::to('document/doc/delete-doc/'.$item->id)}}"><i class="ti ti-x"></i></a>
                                        <a href="{{ URL::to('document/doc/g-edit-doc/'.$item->id)}}"><i class="ti ti-edit"></i></a>
                                        @endif
                                    </td>
                                </tr>
                            @endforeach 
                        @else
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td class="text-center">
                                    <h3>Trống</h3>
                                </td>
                                <td></td>
                            </tr> 
                        @endif
                        
                            
                        
                    </tbody>
                </table>
                {{-- {{$doc->links()}} --}}
            </div>
        </div>
    </div>
</div>
@endsection