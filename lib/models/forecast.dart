import 'package:weather_app/models/daily.dart';

class Forecast {
  final List<Daily> daily;

  Forecast({this.daily});

  factory Forecast.fromJson(Map<String, dynamic> json) {
    List<dynamic> dailyData = json['daily'];

    List<Daily> daily = [];
    
    for (var item in dailyData) {
      var day = Daily.fromJson(item);
      daily.add(day);
    }
    
    return Forecast(
      daily: daily,
    );
  }
}
