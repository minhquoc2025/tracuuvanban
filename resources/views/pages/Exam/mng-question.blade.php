@extends('welcome')
@section('main')
@php
    $stt=1;
@endphp
<div class="container-fluid">
    <h3>DANH SÁCH CÂU HỎI</h3>
    <div class=" d-flex align-items-stretch">
      <div class="card w-100">
        <div class="card-body p-4">
          <div class="row">
            <div class="col-2">
              <h5 class="card-title fw-semibold mb-4">Chức năng: </h5>
            </div>
            <div class="col-2">
              <a href="{{ URL::to('exam/manager/g-add-question/'.$catechild_id)}}" data-bs-toggle="tooltip" data-bs-placement="top" title="Thêm câu hỏi"><i class="ti ti-circle-plus fs-8"></i></a>
              <button type="button" class="border-0 bg-transparent" data-bs-toggle="modal" data-bs-target="#exampleModal" data-bs-toggle="tooltip" data-bs-placement="top" title="Thêm câu hỏi bằng Excel">
                <i class="ti ti-file-spreadsheet fs-8" style="color: green"></i>
              </button>
              <a href="{{ URL::to('exam/manager/export-question/'.$catechild_id)}}" data-bs-toggle="tooltip" data-bs-placement="top" title="Xuất câu hỏi ra file Excel"><i class="ti ti-file-arrow-right fs-8" style="color: red"></i></a>
            </div>
            <div class="col">
              <input class="form-control w-50" type="text" class="form-controller" id="search" name="search" placeholder="Tìm câu hỏi...">
            </div>
          </div>
          <!-- Modal import excel-->
            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Thêm câu hỏi bằng file Excel</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <form action="{{URL::to('exam/manager/import-question/'.$catechild_id)}}" method="POST" enctype="multipart/form-data">
                    {{ csrf_field() }}
                    <div class="modal-body">
                      <input type="file" name="list" id="" class="form-control">
                    </div>
                    <div class="modal-footer">
                      <button type="submit" class="btn btn-primary">Thêm file câu hỏi</button>
                  </form>
                  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Hủy</button>
                </div>
              </div>
            </div>
          {{-- endmodal --}}
        </div>
        <div class="table-responsive">
          <table class="table text-nowrap mb-0 align-middle">
            <thead class="text-dark fs-4">
              <tr>
                <th class="border-bottom-1 col-1">
                  <h6 class="fw-semibold mb-0">STT</h6>
                </th>
                <th class="border-bottom-1">
                  <h6 class="fw-semibold mb-0">CÂU HỎI</h6>
                </th>
                <th class="border-bottom-1">
                    <h6 class="fw-semibold mb-0">CÂU TRẢ LỜI</h6>
                  </th>
                <th class="border-bottom-1 col-1">
                  <h6 class="fw-semibold mb-0"></h6>
                </th>
              </tr>
            </thead>
            <tbody class="fs-3">
              @if ($qs)
                @foreach ($qs as $item)
                  <tr>
                    <td class="border-bottom-0">
                      <h6 class="fw-semibold mb-0">
                        @php
                            echo $stt++;
                        @endphp
                      </h6>
                    </td>
                    <td class="border-bottom-0 text-wrap text-break">
                        <p class="mb-0 fw-normal">{{$item->name}}</p>
                    </td>
                    <td class="border-bottom-0 text-wrap text-break">
                        <p class="mb-0 fw-normal">{{$item->answertrue}}</p>
                    </td>
                    <td class="border-bottom-0">
                      <a href="{{ URL::to('exam/manager/delete-question/'.$item->id)}}"><i class="ti ti-x fs-5" style="color: red"></i></a>
                      <a href="{{ URL::to('exam/manager/g-edit-question/'.$item->id)}}"><i class="ti ti-edit fs-5" ></i></a>
                    </td>
                  </tr>  
                @endforeach  
              @endif                   
            </tbody>
          </table>
          {{ $qs->links('pagination::bootstrap-5') }}
        </div>
      </div>
    </div>
  </div>
</div>

@endsection