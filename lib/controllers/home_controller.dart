import 'package:get/get.dart';
import 'package:weather_app/api/repository/weather_repository.dart';
import 'package:weather_app/models/forecast.dart';
import 'package:weather_app/models/weather.dart';

class HomeController extends GetxController {
  CurrentWeather? currentWeather;
  Forecast? forecastWeather;

  final IWeatherRepository _repository = Get.find();

  @override
  void onInit() {
    _getCurrentWeather();
    _getForecastWeather();
    super.onInit();
  }

  Future<void> _getCurrentWeather() async {
    currentWeather = await _repository.getCurrentWeather();
    update();
  }

  Future<void> _getForecastWeather() async {
    forecastWeather = await _repository.getForecastWeather();
    update();
  }
}
