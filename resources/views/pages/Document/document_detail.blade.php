@extends('welcome')
@section('main')
<div class=" pt-5">
    <div class="card w-100">
        <div class="card-body">
            @foreach ($doc as $item)
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">{{ $item->doc_cate->name }}</li>
                        <li class="breadcrumb-item"><a href="{{URL::to('document/doccate/g-doc-cate/'.$item->doc_catechild->id)}}">{{ $item->doc_catechild->name }}</a></li>
                        <li class="breadcrumb-item"><a href="{{URL::to('document/doc/g-document/'.$item->doc_doccate->id)}}">{{$item->doc_doccate->name}}</a></li>
                    </ol>
                </nav>
            @endforeach
            <h2 class="">({{$doc[0]['document_code']}}) {{$doc[0]['title']}}</h2>
            <strong>{{$doc[0]->doc_user->fullname}}</strong>
            <span>- Thời gian cập nhật:
                @php
                    $timedata = $doc[0]['updated_at'];
                    $date = new DateTime($timedata);
                    echo $date->format('d-m-Y H:i:s');
                @endphp
            </span>
            <div class="container text-center mt-2">
                @foreach ($doc_img as $item)
                    @php
                        $subject = $item->name;
                    @endphp   
                    @if (preg_match("/\.pdf$/i", $subject))
                        <iframe src="{{URL::to('./public/images/'.$item->name)}}" width="100%" height="950px" frameborder="0"></iframe>
                    @else
                        <img class="w-75 mt-2 w-xs-100" src="{{ asset('/public/images/'.$item->name) }}" alt="">
                    @endif  
                @endforeach
            </div>

            {{-- VB liên quan --}}
            <div class="mt-3">
                <hr>
                <h3>Văn bản liên quan</h3>
                <div class="row">
                    @if (count($related) > 0)
                        @foreach ($related as $tt)
                            <div class="col-3">
                                <div class="card">
                                    <div class="card-body">
                                        <a href="{{route('document.detail', $tt->id)}}">
                                            @php
                                                echo substr($tt->title, 0, 137)
                                            @endphp
                                        </a>
                                        <br>
                                        <strong> {{$tt->updated_at}} </strong>
                                        <nav aria-label="breadcrumb">
                                            <ol class="breadcrumb">
                                                <li class="breadcrumb-item">{{ $tt->doc_cate->name }}</li>
                                                <li class="breadcrumb-item"><a href="{{URL::to('document/doccate/g-doc-cate/'.$tt->doc_catechild->id)}}">{{ $tt->doc_catechild->name }}</a></li>
                                                <li class="breadcrumb-item"><a href="{{URL::to('document/doc/g-document/'.$tt->doc_doccate->id)}}">{{$tt->doc_doccate->name}}</a></li>
                                            </ol>
                                        </nav>                                
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    @else
                        @foreach ($relatedcate as $cate)
                            <div class="col-3">
                                <div class="card">
                                    <div class="card-body">
                                        <a href="{{route('document.detail', $cate->id)}}">
                                            @php
                                                echo substr($cate->title, 0, 125)
                                            @endphp
                                        </a>
                                        <br>
                                        <strong> {{$cate->updated_at}} </strong>
                                        <nav aria-label="breadcrumb">
                                            <ol class="breadcrumb">
                                                <li class="breadcrumb-item">{{ $cate->doc_cate->name }}</li>
                                                <li class="breadcrumb-item"><a href="{{URL::to('document/doccate/g-doc-cate/'.$cate->doc_catechild->id)}}">{{ $cate->doc_catechild->name }}</a></li>
                                                <li class="breadcrumb-item"><a href="{{URL::to('document/doc/g-document/'.$cate->doc_doccate->id)}}">{{$cate->doc_doccate->name}}</a></li>
                                            </ol>
                                        </nav>                                
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    @endif
                    
                </div>
            </div>
        </div>
    </div>
</div>
@endsection