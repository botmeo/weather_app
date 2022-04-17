class Weather {
  final double temperature;
  final double high;
  final double low;
  final double feels;
  final double humidity;
  final double pressure;
  final double windSpeed;
  final int sunrise;
  final int sunset;
  final String description;
  final String icon;

  Weather({
    this.temperature,
    this.high,
    this.low,
    this.feels,
    this.humidity,
    this.pressure,
    this.windSpeed,
    this.sunrise,
    this.sunset,
    this.description,
    this.icon,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      temperature: json['main']['temp'].toDouble(),
      high: json['main']['temp_max'].toDouble(),
      low: json['main']['temp_min'].toDouble(),
      feels: json['main']['feels_like'].toDouble(),
      humidity: json['main']['humidity'].toDouble(),
      pressure: json['main']['pressure'].toDouble(),
      windSpeed: json['wind']['speed'].toDouble(),
      sunrise: json['sys']['sunrise'].toInt(),
      sunset: json['sys']['sunset'].toInt(),
      description: json['weather'][0]['description'],
      icon: json['weather'][0]['icon'],
    );
  }
}
