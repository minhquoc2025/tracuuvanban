<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Weather</title>
</head>
<body>
    <div class="card">
        <div class="card-header">
            Weather
        </div>
        <div class="card-body">
           
            @if (isset($data['weather']))
            <strong>Thành phố: {{$data['name']}}</strong><br>
            <strong>Tình trạng: {{$data['weather'][0]['description']}}</strong><br>
            <strong>{{$data['main']['temp']}}</strong><br>
            <strong>{{$data['main']['temp_min']}}</strong><br>
            <strong>{{$data['main']['temp_max']}}</strong><br>
            <strong>{{$data['main']['pressure']}}</strong><br>
            <strong>{{$data['main']['feels_like']}}</strong> <br>
            <strong>{{$data['main']['humidity']}}</strong> <br>
            <strong>{{$dateTime}}</strong>
            @endif
        </div>
    </div>
</body>
</html>