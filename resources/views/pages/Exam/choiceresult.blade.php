@extends('welcome')
@section('main')
<div class="container-fluid">
    <div class="w-50  mx-auto">
        <div class="card">
            <div class="card-body">
                <div class=" text-center">
                    <h3>KẾT QUẢ BÀI THI</h3>
                </div>
                <div class="row">
                    <div class="col-6">
                        <h3>Số câu TL đúng</h3>
                    </div>
                    <div class="col-6 text-end">
                        <h3> {{ $point[1]}} / {{ count($qs) }}</h3>
                    </div>
                </div>
                <div class="row">
                    <div class="col-6">
                        <h3>Điểm của bạn là</h3>
                    </div>
                    <div class="col-6 text-end">
                        <h3>{{ $point[0]}}</h3>
                    </div>
                </div>
                <div class="text-center">
                    <strong>11-10-2024</strong>
                </div>
            </div>
        </div>
    </div>
    @php
        $stt = 0;
    @endphp
    @foreach ($qs as $item)
        <div class="card fs-5" >
            <div class="card-body">
                <h4>Câu @php $stt++; echo $stt;@endphp :{{ $item[0]->name }}</h4>
                <input type="hidden" name="question[]" value="{{ $item[0]->id }}">
                <div class="form-check" 
                @php 
                    if( $pick['ans-'.$stt] == $item[0]->answer1 && $pick['ans-'.$stt] == $item[0]->answertrue){
                        echo "style='background-color: #33CC33; color:white;'";
                    } elseif($pick['ans-'.$stt] == $item[0]->answer1 && $item[0]->answer1 != $item[0]->answertrue){
                        echo "style='background-color: #FF3333; color:white;'";
                    } elseif($pick['ans-'.$stt] != $item[0]->answer1 && $item[0]->answer1 == $item[0]->answertrue){
                        echo "style='background-color: rgb(152,251,152); '";
                    }
                @endphp
                >
                    <input class="form-check-input" type="radio" name="ans-@php echo $stt;@endphp" id="flexRadioDefault1" value="{{ $item[0]->answer1 }}"
                    @php 
                        if( $pick['ans-'.$stt] == $item[0]->answer1 ){
                        echo "checked";
                    } 
                    @endphp
                    >
                    <label class="form-check-label" for="flexRadioDefault1">
                        A. {{ $item[0]->answer1 }}
                    </label>
                </div>
                <div class="form-check"
                @php 
                    if( $pick['ans-'.$stt] == $item[0]->answer2 && $pick['ans-'.$stt] == $item[0]->answertrue){
                        echo "style='background-color: #33CC33; color:white;'";
                    } elseif($pick['ans-'.$stt] == $item[0]->answer2 && $item[0]->answer2 != $item[0]->answertrue){
                        echo "style='background-color: #FF3333; color:white;'";
                    } elseif($pick['ans-'.$stt] != $item[0]->answer2 && $item[0]->answer2 == $item[0]->answertrue){
                        echo "style='background-color: rgb(152,251,152); '";
                    }
                @endphp
                >
                    <input class="form-check-input" type="radio" name="ans-@php echo $stt;@endphp" id="flexRadioDefault2" value="{{ $item[0]->answer2 }}"
                    @php 
                        if($pick['ans-'.$stt] == $item[0]->answer2){
                            echo "checked";
                        }
                    @endphp
                    >
                    <label class="form-check-label" for="flexRadioDefault2">
                        B. {{ $item[0]->answer2 }}
                    </label>
                </div>
                <div class="form-check"
                @php 
                    if( $pick['ans-'.$stt] == $item[0]->answer3 && $pick['ans-'.$stt] == $item[0]->answertrue){
                        echo "style='background-color: #33CC33; color:white;'";
                    } elseif($pick['ans-'.$stt] == $item[0]->answer3 && $item[0]->answer3 != $item[0]->answertrue){
                        echo "style='background-color: #FF3333; color:white;'";
                    } elseif($pick['ans-'.$stt] != $item[0]->answer3 && $item[0]->answer3 == $item[0]->answertrue){
                        echo "style='background-color: rgb(152,251,152); '";
                    }
                @endphp
                >
                    <input class="form-check-input" type="radio" name="ans-@php echo $stt;@endphp" id="flexRadioDefault3" value="{{ $item[0]->answer3 }}"
                    @php 
                        if($pick['ans-'.$stt] == $item[0]->answer3){
                            echo "checked";
                        }
                    @endphp
                    >
                    <label class="form-check-label" for="flexRadioDefault1">
                        C. {{ $item[0]->answer3 }}
                    </label>
                </div>
                <div class="form-check"
                @php 
                    if( $pick['ans-'.$stt] == $item[0]->answer4 && $pick['ans-'.$stt] == $item[0]->answertrue){
                        echo "style='background-color: #33CC33; color:white;'";
                    } elseif($pick['ans-'.$stt] == $item[0]->answer4 && $item[0]->answer4 != $item[0]->answertrue){
                        echo "style='background-color: #FF3333; color:white;'";
                    } elseif($pick['ans-'.$stt] != $item[0]->answer4 && $item[0]->answer4 == $item[0]->answertrue){
                        echo "style='background-color: rgb(152,251,152); '";
                    }
                @endphp
                >
                    <input class="form-check-input" type="radio" name="ans-@php echo $stt;@endphp" id="flexRadioDefault4" value="{{ $item[0]->answer4 }}"
                    @php 
                        if($pick['ans-'.$stt] == $item[0]->answer4){
                            echo "checked";
                        }
                    @endphp
                    >
                    <label class="form-check-label" for="flexRadioDefault2">
                        D. {{ $item[0]->answer4 }}
                    </label>
                </div>
            </div>
        </div>
    @endforeach  
    <div class="text-center">
        <a href="{{ URL::to('/exam/back-choice-home')}}" class="btn btn-outline-success">Trở về</a>
    </div>
</div>
@endsection