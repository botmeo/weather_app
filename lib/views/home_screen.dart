import 'package:flutter/material.dart';
import 'package:weather_app/api/weather_api.dart';
import 'package:weather_app/models/forecast.dart';
import 'package:weather_app/models/weather.dart';
import 'package:weather_app/widgets/current_weather.dart';
import 'package:weather_app/widgets/forecast_weather.dart';
import 'package:weather_app/widgets/information_weather.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView (
        children: <Widget>[
          currentWeatherViews(),
          forecastWeatherViews(),
        ],
      ),
    );
  }
}
 
Widget currentWeatherViews() {
  Weather weather;
  return FutureBuilder(
    builder: (context, snapshot) {
      if (snapshot.hasData) {
        weather = snapshot.data;
        if (weather == null) {
          return Text("Error getting weather");
        } else {
          return Column(children: [
            currentWeather(context, weather),
            informationWeather(weather),
            expandWeather(weather),
          ]);
        }
      } else {
        return Center(child: CircularProgressIndicator());
      }
    },
    future: WeatherApiClient().getCurrentWeather(),
  );
}

Widget forecastWeatherViews() {
  Forecast forecast;
  return FutureBuilder(
    builder: (context, snapshot) {
      if (snapshot.hasData) {
        forecast = snapshot.data;
        if (forecast == null) {
          return Text("Error getting weather");
        } else {
          return dailyForecast(forecast);
        }
      } else {
        return Center(child: CircularProgressIndicator());
      }
    },
    future: WeatherApiClient().getForecastWeather(),
  );
}







