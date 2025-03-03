@extends('welcome')
@section('main')
<div class="container-fluid">
  <div class="card">
    <div class="card-body">
      <h3>Tra cứu Văn bản</h3>
      <div class="container">
        <form action="{{ URL::to('document/doc/search-home')}}" method="get">
          {{ csrf_field() }}
          <div class="row">
            <div class="col-6">
              <div class="row">
                <div class="col-8">
                  <input name="search_home" type="text" class="form-control" placeholder="Nhập tên văn bản ..." value="{{ request('search_home') }}">
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
            <div class="col-2 text-center mt-1">
              <button type="submit" class="btn btn-light-secondary">Tìm văn bản</button>
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
      </div>
      @if(empty($products))
        
      @else
      <div class="table-responsive">
        <table class="table table-hover text-nowrap mb-0 align-middle">
          <thead class="text-dark fs-4">
            <tr>
              <th class="border-bottom-2">
                <h6 class="fw-semibold mb-0">STT</h6>
              </th>
              <th class="border-bottom-2 col-1 text-center">
                <h6 class="fw-semibold mb-0">Số văn bản</h6>
              </th>
              <th class="border-bottom-2 col-1 text-center">
                <h6 class="fw-semibold mb-0">Loại văn bản</h6>
              </th>
              <th class="border-bottom-2  text-center">
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
            
            @foreach ($products as $item)
            <tr>
              <td class="border-bottom-0">
                <h6 class="fw-semibold mb-0">{{ $stt++ }}</h6>
              </td>
              <td class="border-bottom-0 text-center">
                <h6 class="fw-semibold mb-0">{{ $item->document_code}}</h6>
              </td>
              <td class="border-bottom-0 text-center">
                <h6 class="fw-semibold mb-0">{{ $item->type}}</h6>
              </td>
              <td class="border-bottom-0 text-wrap" >
                <a href="{{ URL::to('document/doc/g-detail/'.$item->id)}}">
                  <h6 class="fw-semibold mb-1">{{ $item->title}}</h6>
                  <a href="">{{ $item->doc_cate->name.'/'.$item->doc_catechild->name.'/'.$item->doc_doccate->name }}</a>
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
                @if ($data['u_r']->hasRole('Admin'))
                  <a class="text-danger" href="{{ URL::to('document/doc/delete-doc/'.$item->id)}}"><i class="ti ti-x"></i></a>
                  <a href="{{ URL::to('document/doc/g-edit-doc/'.$item->id)}}"><i class="ti ti-edit"></i></a>
                @endif
              </td>
            </tr>
            @endforeach
          </tbody>
          
        </table>
        {{$products->links()}}
      </div>
      @endif
    </div>
  </div>
  {{-- Thống kê tài khoản, văn bản, câu hỏi --}}
  <div class="row">
    <div class="col-sm-6 col-xl-4">
      <div class="card overflow-hidden rounded-2">
        <div class="position-relative p-2">
          <svg  xmlns="http://www.w3.org/2000/svg"  width="50"  height="50" color="#f76707" viewBox="0 0 24 24"  fill="none"  stroke="currentColor"  stroke-width="2"  stroke-linecap="round"  stroke-linejoin="round"  class="icon icon-tabler icons-tabler-outline icon-tabler-script"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M17 20h-11a3 3 0 0 1 0 -6h11a3 3 0 0 0 0 6h1a3 3 0 0 0 3 -3v-11a2 2 0 0 0 -2 -2h-10a2 2 0 0 0 -2 2v8" /></svg>
          <a class=" p-2  d-inline-flex position-absolute bottom-0 end-0 mb-n3 me-3" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-title="Add To Cart">
            <h1>
              @php
                  echo count($data['document']);
              @endphp
            </h1>
          </a>               
        </div>
        <div class="card-body pt-3 p-4">
          <h6 class="fw-semibold fs-4">Văn Bản</h6>
        </div>
      </div>
    </div>
    <div class="col-sm-6 col-xl-4">
      <div class="card overflow-hidden rounded-2 p-2">
        <div class="position-relative ">
          <svg  xmlns="http://www.w3.org/2000/svg"  width="50"  height="50" color="#74b816" viewBox="0 0 24 24"  fill="none"  stroke="currentColor"  stroke-width="2"  stroke-linecap="round"  stroke-linejoin="round"  class="icon icon-tabler icons-tabler-outline icon-tabler-users-group"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M10 13a2 2 0 1 0 4 0a2 2 0 0 0 -4 0" /><path d="M8 21v-1a2 2 0 0 1 2 -2h4a2 2 0 0 1 2 2v1" /><path d="M15 5a2 2 0 1 0 4 0a2 2 0 0 0 -4 0" /><path d="M17 10h2a2 2 0 0 1 2 2v1" /><path d="M5 5a2 2 0 1 0 4 0a2 2 0 0 0 -4 0" /><path d="M3 13v-1a2 2 0 0 1 2 -2h2" /></svg> 
          <a class=" p-2  d-inline-flex position-absolute bottom-0 end-0 mb-n3 me-3" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-title="Add To Cart">
            <h1>
              @php
                $stt=1;
                echo count($data['user']);
              @endphp
            </h1>
          </a>                  
        </div>
        <div class="card-body pt-3 p-4">
          <h6 class="fw-semibold fs-4">Tài khoản</h6>
        </div>
      </div>
    </div>
    <div class="col-sm-6 col-xl-4">
      <div class="card overflow-hidden rounded-2">
        <div class="position-relative p-2">
          <svg  xmlns="http://www.w3.org/2000/svg"  width="50"  height="50"  viewBox="0 0 24 24"  fill="none"  stroke="currentColor"  stroke-width="2"  stroke-linecap="round"  stroke-linejoin="round"  class="icon icon-tabler icons-tabler-outline icon-tabler-folder-question"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M15 19h-10a2 2 0 0 1 -2 -2v-11a2 2 0 0 1 2 -2h4l3 3h7a2 2 0 0 1 2 2v2.5" /><path d="M19 22v.01" /><path d="M19 19a2.003 2.003 0 0 0 .914 -3.782a1.98 1.98 0 0 0 -2.414 .483" /></svg>
          <a class=" p-2  d-inline-flex position-absolute bottom-0 end-0 mb-n3 me-3" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-title="Add To Cart">
            <h1>
              @php
                  echo count($data['question']);
              @endphp
            </h1>
          </a>                      
        </div>
        <div class="card-body pt-3 p-4">
          <h6 class="fw-semibold fs-4">Câu hỏi</h6>
        </div>
      </div>
    </div>
    
  </div>
  {{-- end Thống kê tài khoản, văn bản, câu hỏi --}}
  {{-- chart --}}
  <div class="row mb-3">
    <div class="col-8">
      <div class="card">
        <div class="card-body">
          <h5>Đăng tải tài liệu nhiều nhất</h5>
          <hr>
          @php
            $data['user'] = $data['user']->sortByDesc(function ($top) {
                return $top->all_doc->count();
            });
          @endphp
          @foreach ($data['user']->slice(0, 5) as $top)
            @if ($top->all_doc->count() == 0)
              @continue
            @else
              <div class="row">
                <div class="col-2 pb-2">
                  <p class="">{{$top->fullname}}</p>
                </div>
                <div class="col-10">
                  <div class="progress">
                    <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="@php
                        echo $vla = $top->all_doc->count()*100/count($data['document']);
                    @endphp" aria-valuemin="0" aria-valuemax="100" style="width: @php
                        echo $vla.'%';
                    @endphp">{{$top->all_doc->count()}}</div>
                  </div>
                </div>
              </div>  
            @endif
          @endforeach
        </div>
      </div>

      <div class="card">
        <div class="card-body">
          <h5>Trả lời nhiều nhất</h5>
          <hr>
          @php
            $data['user'] = $data['user']->sortByDesc(function ($top) {
                return count($top->user_choice);
            });
            @endphp
          @foreach ($data['user']->slice(0, 5) as $top)
            @if ($top->user_choice->count() == 0)
              @continue 
            @else
              <div class="row">
                <div class="col-2 pb-2">
                  <p class="">{{$top->fullname}}</p>
                </div>
                <div class="col-10">
                  <div class="progress">
                    <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="@php
                        echo $vla = count($top->user_choice)*100/count($data['all_choice']);
                    @endphp" aria-valuemin="0" aria-valuemax="100" style="width: @php
                        echo $vla.'%';
                    @endphp">{{$top->user_choice->count()}}</div>
                  </div>
                </div>
              </div>
            @endif
          @endforeach
        </div>
      </div>
    </div>
    {{-- end chart --}}
    {{-- online & weather --}}
    <div class="col-4">
      <iframe src='https://dubaothoitiet.com.vn/iframe?term=32&days=7&hC=%23ffffff&hB=%23425bff&bC=%23425bff&tC=%2318211e&lC=%23dddddd' id='widgeturl' width='100%' height='540' scrolling='no' frameborder='0' allowtransparency='true' style='border:none;overflow:hidden;'></iframe>
      <div class="card">
        <div class="card-body">
          <h5>Đang hoạt động</h5>
          <hr>
          <table class="table">
            <tbody>
              @foreach ($data['user'] as $item)
                @if ($item->checkActive())
                  <tr>
                    <td>
                      {{$item->fullname}}
                      <i class="ti ti-network fs-6"style="color: green"></i>
                    </td>
                  </tr> 
                @endif
              @endforeach
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
  {{-- end online --}}
</div>
@endsection