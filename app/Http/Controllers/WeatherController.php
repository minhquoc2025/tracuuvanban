<?php

namespace App\Http\Controllers;
use GuzzleHttp\Client;
use Illuminate\Http\Request;

class WeatherController extends Controller
{
    public function getweather(Request $request)
    {
        $apikey = env('OPENWEATHER_API_KEY');
        $city = "Hanoi";
        $client = new Client(); 
        $response =  $client->get("https://www.meteosource.com/api/v1/free/point?place_id=Hanoi&sections=all&timezone=UTC&language=en&units=metric&key=$apikey");
        $data = json_decode($response->getbody(), true);
        return view('weather', ['data' => $data, 'tempMin'=> $data['main']['temp_min'], 'tempMax'=> $data['main']['temp_max'], 'feelslike' => $data['main']['feels_like'], 'dateTime' => date('Y-m-d H:i:s', $data['dt'])]);
    }
}
