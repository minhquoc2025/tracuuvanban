@extends('welcome')
@section('main')
<style>
  /* Style for preview

  /* Style for 

  /* St



  /* Style for preview container */
  #previewContainer {
      display: flex;
      flex-wrap: wrap;
      justify-content: flex-start;
      gap: 10px;
      margin-top: 20px;
      /* Adjust this to change the location of images */
      margin-left: 20px;  /* Change this to shift the preview container */
  }

  /* Style for each image */
  #previewContainer img {
      width: 300px; /* Set size of image preview */
      height: 400px; /* Maintain square aspect ratio */
      object-fit: cover; /* Ensure images don't distort */
  }

  /* You can customize the preview container to make it in any location */
  .custom-location {
      position: absolute;
      top: 200px; /* Change the Y-axis position */
      left: 300px; /* Change the X-axis position */
  }
</style>
<div class="container-fluid">
  <h3>Thêm văn bản, tài liệu</h3>
    @foreach ($doccate as $item)
      <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
          <li class="breadcrumb-item active" aria-current="page">{{ $item->doccate_cate->name }}</li>
          <li class="breadcrumb-item"><a href="{{URL::to('document/doccate/g-doc-cate/'.$item->doccate_catechild->id)}}">{{ $item->doccate_catechild->name }}</a></li>
          <li class="breadcrumb-item"><a href="{{URL::to('document/doc/g-document/'.$item->id)}}">{{$item->name}}</a></li>
        </ol>
      </nav>
    @endforeach
  <div class="card">
      <div class="card-body">
        <form action="{{ URL::to('document/doc/doc-add')}}" method="POST" enctype="multipart/form-data">
          @csrf
          <div class="mb-3">
            @foreach ($doccate as $id)
              <input type="hidden" name="id_doccate" value="{{$id->id}}">
              <input type="hidden" name="id_catechild" value="{{$id->doccate_catechild->id}}">
              <input type="hidden" name="id_cate" value="{{$id->doccate_cate->id}}">
            @endforeach
          </div>
          <div class="row mb-3">
            <div class="col-2">
              <label for="exampleInputEmail1" class="form-label">Mã số VB</label>
              <input type="text" class="form-control" name="document_code" max="20" required value="{{ Request::old('document_code') }}" autofocus>
            </div>
            <div class="col-2">
              <label for="exampleInputEmail1" class="form-label">Thể loại</label>
              <select name="type" class="form-control">
                <option value="Công văn">Công văn</option>
                <option value="Chỉ thị">Chỉ thị</option>
                <option value="Kế hoạch">Kế hoạch</option>
                <option value="Kết luận">Kết luận</option>
                <option value="Hướng dẫn">Hướng dẫn</option>
                <option value="Thông tư">Thông tư</option>
                <option value="Nghị quyết">Nghị Quyết</option>
                <option value="Nghị định">Nghị định</option>
                <option value="Quyết định">Quyết định</option>
                <option value="Quy định">Quy định</option>
                <option value="Quy chế">Quy chế</option>
                <option value="Khác">Khác</option>
              </select>
              {{-- <input type="text" class="form-control" name="document_code" required value="{{ Request::old('document_code') }}"> --}}
            </div>
            <div class="col-6">
              <label for="exampleInputEmail1" class="form-label">Tiêu đề</label>
              {{-- <input type="text" class="form-control" name="title" max="255" required value="{{ Request::old('title') }}"> --}}
              <textarea class="form-control" name="title" max="255" required value="{{ Request::old('title') }}" ></textarea>
            </div>
            <div class="col-2">
              <label for="exampleInputEmail1" class="form-label">Ngày</label>
              <input type="date" class="form-control" name="document_date" required value="">
            </div>
          </div>
          <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label">Hình ảnh hoặc PDF file</label>
            <input class="form-control" type="file" name="world[]" multiple required>
            {{-- <input type="file" id="fileInput" name="images" accept="image/*" name="world[]" multiple onchange="previewImages()">
            <div id="previewContainer" class=" text-center"></div>
            <br>
            <input type="submit" value="Submit"> --}}
          </div>
          <div class="mb-3 text-center">
            <button type="submit" class="btn btn-primary ">Lưu</button>
          </div>
        </form>
      </div>
  </div>
</div>

<script>
  function previewImages() {
      const fileInput = document.getElementById('fileInput');
      const previewContainer = document.getElementById('previewContainer');
      previewContainer.innerHTML = ""; // Clear previous previews

      const files = fileInput.files;
      if (files) {
          for (let i = 0; i < files.length; i++) {
              const file = files[i];
              const reader = new FileReader();

              reader.onload = function(event) {
                  const imgElement = document.createElement('img');
                  imgElement.src = event.target.result;
                  previewContainer.appendChild(imgElement);
              };

              reader.readAsDataURL(file);
          }
      }
  }
</script>


@endsection