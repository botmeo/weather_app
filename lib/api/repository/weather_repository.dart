import 'package:weather_app/api/provider/weather_provider.dart';
import 'package:weather_app/models/forecast.dart';
import 'package:weather_app/models/weather.dart';

abstract class IWeatherRepository {
  Future<CurrentWeather> getCurrentWeather();
  Future<Forecast> getForecastWeather();
}

class WeatherRepository implements IWeatherRepository {
  final IWeatherProvider provider;

  WeatherRepository({
    required this.provider,
  });

  @override
  Future<CurrentWeather> getCurrentWeather() {
    return provider.getCurrentWeather();
  }

  @override
  Future<Forecast> getForecastWeather() {
    return provider.getForecastWeather();
  }
}
