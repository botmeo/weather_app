import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/api/url_helper.dart';
import 'package:weather_app/models/forecast.dart';
import 'package:weather_app/models/weather.dart';

abstract class IWeatherProvider {
  Future<String?> fetchUrl(Uri uri);
  Future<CurrentWeather> getCurrentWeather();
  Future<Forecast> getForecastWeather();
}

class WeatherProviderAPI implements IWeatherProvider {
  final apiKey = dotenv.get('API_KEY');
  final city = dotenv.get('CITY');
  final lat = dotenv.get('LAT');
  final lon = dotenv.get('LON');

  @override
  Future<String?> fetchUrl(Uri uri) async {
    try {
      final client = http.Client();
      final response = await client.get(uri);
      if (response.statusCode == 200) {
        return response.body;
      }
    } catch (e) {
      Exception(e);
    }
    return null;
  }

  @override
  Future<CurrentWeather> getCurrentWeather() async {
    Uri uri = Uri.https(
      UrlHelper.baseUrl,
      UrlHelper.currentWeather,
      {
        'appid': apiKey,
        'q': city,
        'units': 'metric',
        'lang': 'vi',
      },
    );

    String? response = await fetchUrl(uri);
    return CurrentWeather.parseCurrentWeatherResult(response!);
  }

  @override
  Future<Forecast> getForecastWeather() async {
    Uri uri = Uri.https(
      UrlHelper.baseUrl,
      UrlHelper.forecastWeather,
      {
        'appid': apiKey,
        'lat': lat,
        'lon': lon,
        'units': 'metric',
        'lang': 'vi',
      },
    );

    String? response = await fetchUrl(uri);
    return Forecast.parseForecastWeatherResult(response!);
  }
}
