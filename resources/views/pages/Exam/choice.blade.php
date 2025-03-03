@extends('welcome')
@section('main')
<style>.clock {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    background-color: #f0f0f0;
}

button {
    background-color: transparent;
    border: none;
    font-size: 40px;
    font-family: 'Arial', sans-serif;
    cursor: pointer;
    outline: none;
    padding: 20px;
    color: #333;
}

button:focus {
    border: none;
    outline: none;
}

#time {
    font-size: 50px;
    color: #333;
    font-weight: bold;
}
</style>
<div class="clock">
    <button class="bg-transparent border-0">
        <span name="timer" id="time">00:00</span>
    </button>	
</div>
<div class="container-fluid">
    <div class="text-center">
        <h3>TRẢ LỜI CÂU HỎI</h3>
    </div>
    @php
        $stt = 0;
    @endphp
    <form id="fruitbox" action="{{ URL::to('/exam/handle-result')}}" method="post">
        {{ csrf_field() }}
        @foreach ($question as $item)
            <div class="card">
                <div class="card-body">
                    <h5>Câu @php $stt++; echo $stt;@endphp :{{ $item->name }}</h5>
                    <input type="hidden" name="question[]" value="{{ $item->id }}">
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="ans-@php echo $stt;@endphp" id="flexRadioDefault1" value="{{ $item->answer1 }}">
                        <label class="form-check-label" for="flexRadioDefault1">
                            A. {{ $item->answer1 }}
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="ans-@php echo $stt;@endphp" id="flexRadioDefault2" value="{{ $item->answer2 }}">
                        <label class="form-check-label" for="flexRadioDefault2">
                            B. {{ $item->answer2 }}
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="ans-@php echo $stt;@endphp" id="flexRadioDefault3" value="{{ $item->answer3 }}">
                        <label class="form-check-label" for="flexRadioDefault1">
                            C. {{ $item->answer3 }}
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="ans-@php echo $stt;@endphp" id="flexRadioDefault4" value="{{ $item->answer4 }}">
                        <label class="form-check-label" for="flexRadioDefault2">
                            D. {{ $item->answer4 }}
                        </label>
                    </div>
                </div>
            </div>
        @endforeach
        <div class="text-center">
            <button  type="submit" class="btn btn-primary">Kết thúc</button>
        </div>
    </form>
</div>
<?php
    $now = new DateTime();  // Current time as DateTime object
    $now->format('H:i:s');  // Display current time

    // Example time from $time variable
    $timestart = $time;  // Example date-time string

    $timeObj = new DateTime($timestart);  // Convert $time to DateTime object

    // Calculate the difference
    $interval = $now->diff($timeObj);

    // Get the difference in minu...
    $differenceInHours = ($count * 60) - ($interval->i * 60 + $interval->s);
?>
<input id="qo" type="text" value="{{$differenceInHours}}" readonly hidden>
<script type="text/javascript">
	function startTimer(duration, display) {
        var timer = duration, minutes, seconds;
        setInterval(function () {
            minutes = parseInt(timer / 60, 10);
            seconds = parseInt(timer % 60, 10);

            minutes = minutes < 10 ? "0" + minutes : minutes;
            seconds = seconds < 10 ? "0" + seconds : seconds;

            display.textContent = minutes + ":" + seconds;

            if (--timer < 0 ) {
                //timer = duration;
                document.getElementById('fruitbox').submit();
            }
        }, 1000);
    }
    window.onload = function (settime) {
        var settime = document.getElementById('qo').value;
        var fiveMinutes = settime, 
        display = document.querySelector('#time');
        startTimer(fiveMinutes, display);
    };
</script>
@endsection
