import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_app/models/forecast.dart';
import 'package:weather_app/models/weather.dart';

class WeatherApiClient {
  static const weatherMapURL = 'https://api.openweathermap.org/data/2.5';
  final apiKey = '53e3ec17b4834961ffdee019c055feb1';
  final city = 'Hanoi';
  final lat = '21.0245';
  final lon = '105.8412'; 

  Future<dynamic> getCurrentWeather() async {
    Weather weather;
    var url = '$weatherMapURL/weather?q=$city&appid=$apiKey&units=metric&lang=vi';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      weather = Weather.fromJson(json.decode(response.body));
    }
    return weather;
  }

  Future<dynamic> getForecastWeather() async {
    Forecast forecast;
    var url = '$weatherMapURL/onecall?lat=$lat&lon=$lon&appid=$apiKey&units=metric&lang=vi';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      forecast = Forecast.fromJson(jsonDecode(response.body));
    }
    return forecast;
  }
}
