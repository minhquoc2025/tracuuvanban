@extends('welcome')
@section('main')
<div class="container-fluid">
  <h3>Tìm kiếm văn bản, tài liệu</h3>
  <div class="card w-100">
    <div class="card-body p-4">
      
      <div></div>
      @foreach ($breadcrumb as $bcb)
      <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
          <li class="breadcrumb-item active">{{ $bcb->doccate_cate->name }}</li>
          <li class="breadcrumb-item"><a href="{{URL::to('document/doccate/g-doc-cate/'.$bcb->doccate_catechild->id)}}">{{ $bcb->doccate_catechild->name }}</a></li>
          <li class="breadcrumb-item active" aria-current="page">{{ $bcb->name }}</li>
        </ol>
      </nav>
      @endforeach
      <form action="{{ URL::to('document/doc/g-search-doc/'.$doccate_id)}}" method="GET">
        @csrf
        <div class="row ">
          <div class="col-2 text-center">
              <a href="{{ URL::to('document/doc/g-document-add/'.$doccate_id) }}" class="btn btn-success"><i class="ti ti-plus"></i></a>
          </div>
          <div class="col-5">
            <div class="row">
              <div class="col-8">
                <input name="search" type="text" class="form-control" placeholder="Nhập tên văn bản ..." value="{{ request('search') }}">
              </div>
              <div class="col-4">
                @php
                  $types = ["Kế hoạch", "Kết luận", "Hướng dẫn", "Công văn", "Quyết định", "Nghị quyết", "Nghị định", "Chỉ thị", "Thông tư", "Quy chế", "Quy định", "Khác"];
                @endphp
                <select name="category_document" class="form-select" aria-label="Default select example">
                    <option value="Null">Loại văn bản</option>
                  @foreach ($types as $type)
                    <option value="{{ $type }}" @if (request('category_document') == $type) selected @endif>
                      {{ $type }}
                    </option>
                  @endforeach
                </select>
              </div>
            </div>
          </div>
          <div class="col-1">
            <button type="submit" class="btn btn-primary">Tìm</button>
          </div>
          <div class="col-4">
            <div class="row">
              <div class="col">
                <input name="date_d" type="number" max="31" min="1" placeholder="Ngày" class="form-control" value="{{ request('date_d') }}">
              </div>
              <div class="col">
                <input name="date_m" type="number" max="12" min="1" placeholder="Tháng" class="form-control" value="{{ request('date_m') }}">
              </div>
              <div class="col">
                <input name="date_y" type="number" placeholder="Năm" class="form-control" value="{{ request('date_y') }}">
              </div>
            </div>
          </div>
        </div>
      </form>
      <div class="table-responsive">
        <table class="table table-hover text-nowrap mb-0 align-middle">
          <thead class="text-dark fs-4">
            <tr>
              <th class="border-bottom-2">
                <h6 class="fw-semibold mb-0">STT</h6>
              </th>
              <th class="border-bottom-2  text-center">
                <h6 class="fw-semibold mb-0">Mã số văn bản</h6>
              </th>
              <th class="border-bottom-2  text-center">
                <h6 class="fw-semibold mb-0">Loại văn bản</h6>
              </th>
              <th class="border-bottom-2">
                <h6 class="fw-semibold mb-0">Tên văn bản</h6>
              </th>
              <th class="border-bottom-2 text-center">
                <h6 class="fw-semibold mb-0">Chức năng</h6>
              </th>
            </tr>
          </thead>
          <tbody> 
            @php
                $stt = 1;
            @endphp 
            @if (count($products)>0)
              @foreach ($products as $item)
              <tr>
                <td class="border-bottom-0 col-1">
                  <h6 class="fw-semibold mb-0">{{ $stt++ }}</h6>
                </td>
                <td class="border-bottom-0 col-1">
                  <h6 class="fw-semibold mb-0">{{ $item->document_code}}</h6>
                </td>
                <td class="border-bottom-0 col-1">
                  <h6 class="fw-semibold mb-0">{{ $item->type}}</h6>
                </td>
                <td class="border-bottom-0 text-wrap">
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
                <td class="border-bottom-0 fs-8 text-center col-1">
                  @if ($item->like_user->isEmpty())
                      <a href="{{ URL::to('document/doc/like-doc/'.$item->id)}}"><i class="ti ti-heart-plus"></i></a>
                    @else                  
                      @foreach ($item->like_user as $role)
                        @if ($role->id == Session('id_user') && $role->pivot->doc_id == $item->id)
                          <a class="text-warning" href="{{ URL::to('document/doc/un-like-doc/'.$item->id)}}"><i class="ti ti-heart"></i></a>
                        @else
                          <a href="{{ URL::to('document/doc/like-doc/'.$item->id)}}"><i class="ti ti-heart-plus"></i></a>
                        @endif
                      @endforeach 
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

                <td class="text-center"><h3>Không có văn bản, tài liệu nào</h3></td>
                <td></td>
                <td></td>
              </tr> 
            @endif
          </tbody>
        </table>
        {{$products->links()}}
      </div>
    </div>
  </div>
</div>
@endsection
