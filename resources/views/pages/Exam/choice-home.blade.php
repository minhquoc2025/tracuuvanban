@extends('welcome')
@section('main')
<div class="container-fluid">
    <div class="card">
        <div class="card-body">
            <div class="text-center">
                <h3>KIỂM TRA KIẾN THỨC</h3>
            </div>
            {{-- <form action="{{ URL::to('document/doccate/doc-cate-add/') }}" method="POST">
                @csrf
                <p class="text-center">
                    <button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
                    Thêm loại văn bản
                    </button>
                </p>
                <div class="collapse" id="collapseExample">
                    <div class="card card-body w-50 m-auto">
                    <input name="name" type="text" class="form-control w-50 m-auto" placeholder="Tên loại văn bản" required>
                    <div class="text-center mt-2">
                        <button type="submit" class="btn btn-success">Thêm</button>
                    </div>
                    </div>
                </div>
            </form> --}}
            <div class="row mt-3">
                @foreach ($cate as $item)
                    <div class="col-md-6">
                        <div class="card">
                            <div class="card-body row">
                                <div class="col-8">
                                    <a href="{{ URL::to('exam/g-choice-catechild/'.$item->id) }}"><h5 class="card-title">{{ $item->name }}</h5></a>
                                    <br>
                                </div>
                                <div class="col-4 text-center">
                                    <h1>{{count($item->cate_question)}}</h1>
                                    <span>Câu hỏi</span>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</div>
@endsection