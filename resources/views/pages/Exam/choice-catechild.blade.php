@extends('welcome')
@section('main')
<div class="container-fluid">
    <div class="card">
        <div class="card-body">
            <div class="text-center">
                <h3>KIỂM TRA KIẾN THỨC</h3>
            </div>
            <div class="row mt-3">
                @foreach ($catechild as $item)
                    <div class="col-md-4">
                        <div class="card">
                            <div class="card-body row">
                                <div class="col-8">
                                    <div class="dropdown">
                                        <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
                                            <h5 class="card-title">{{ $item->name }}</h5>
                                        </a>
                                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                          <li><a class="dropdown-item" href="{{ URL::to('exam/g-choice/'.$item->id.'/10') }}">Bộ 10 câu hỏi</a></li>
                                          <li><a class="dropdown-item" href="{{ URL::to('exam/g-choice/'.$item->id.'/20') }}">Bộ 20 câu hỏi</a></li>
                                          <li><a class="dropdown-item" href="{{ URL::to('exam/g-choice/'.$item->id.'/25') }}">Bộ 25 câu hỏi</a></li>
                                        </ul>
                                    </div>
                                    <br>
                                </div>
                                <div class="col-4 text-center">
                                    <h1>{{ count($item->catechild_question) }}</h1>
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