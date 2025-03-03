@extends('welcome')
@section('main')
<div class="container-fluid">
  <div class="card">
    <div class="card-body">
      <h5 class="card-title fw-semibold mb-4">Danh sách văn bản, tài liệu</h5>
      @foreach ($breadcrumb as $bcb)
      <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
          <li class="breadcrumb-item active">{{ $bcb->doccate_cate->name }}</li>
          <li class="breadcrumb-item"><a href="{{URL::to('document/doccate/g-doc-cate/'.$bcb->doccate_catechild->id)}}">{{ $bcb->doccate_catechild->name }}</a></li>
          <li class="breadcrumb-item active" aria-current="page">{{ $bcb->name }}</li>
        </ol>
      </nav>
      @endforeach
      <form action="{{ URL::to('document/doc/g-search-doc/'.$id_doccate)}}" method="GET">
        @csrf
        <div class="row">
          <div class="col-2 text-center">
              <a href="{{ URL::to('document/doc/g-document-add/'.$id_doccate) }}" class="btn btn-success"><i class="ti ti-plus"></i></a>
          </div>
          <div class="col-5">
            <input class="form-control" type="search" name="title" id="" placeholder="Tìm kiếm">
          </div>
          <div class="col-2">
            <button type="submit" class="btn btn-primary">Tìm kiếm</button>
          </div>
          <div class="col-3">
          </div>
        </div>
      </form>
      <div class="table-responsive">
        <table class="table table-hover text-nowrap mb-0 align-middle">
          <thead class="text-dark fs-4">
            <tr>
              <th class="border-bottom-2">
                <h6 class="fw-semibold mb-0 col-1">STT</h6>
              </th>
              <th class="border-bottom-2 text-center">
                <h6 class="fw-semibold mb-0 col-2">Mã số văn bản</h6>
              </th>
              <th class="border-bottom-2 text-center">
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
            @if (count($doc)>0)
              @foreach ($doc as $item)
                <tr>
                  <td class="border-bottom-0 col-1">
                    <h6 class="fw-semibold mb-0">{{ $stt++ }}</h6>
                  </td>
                  <td class="col-1">
                    <h6>{{$item->document_code}}</h6>
                  </td>
                  <td class="col-1">
                    <h6>{{$item->type}}</h6>
                  </td>
                  <td class="border-bottom-0 text-wrap text-break" >
                    <a href="{{ URL::to('document/doc/g-detail/'.$item->id)}}">
                      <h6 class="fw-semibold mb-1">{{ $item->title}}</h6>
                      <span class="fw-normal text-dark">
                        @php
                          $substring= substr($item->content, 0, 11);
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
                    
                    {{-- <a href="{{ URL::to('document/doc/like-doc/'.$item->id)}}"><i class="ti ti-heart-plus"></i></a>
                    <a class="text-warning" href="{{ URL::to('document/doc/un-like-doc/'.$item->id)}}"><i class="ti ti-heart"></i></a> --}}
                    
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
                <td class="text-center">
                  <h3>Chưa có văn bản, tài liệu nào được thêm vào</h3>
                </td>
                <td></td>
                <td></td>
              </tr> 
            @endif
          </tbody>
        </table>
        {{$doc->links()}}
      </div>
    </div>
  </div>
</div>
@endsection