class Daily {
  final int dt;
  final double low;
  final double high;
  final double humidity;
  final String icon;

  Daily({this.dt, this.low, this.high, this.humidity, this.icon});

  factory Daily.fromJson(Map<String, dynamic> json) {
    return Daily(
      dt: json['dt'].toInt(),
      low: json['temp']['min'].toDouble(),
      high: json['temp']['max'].toDouble(),
      humidity: json['humidity'].toDouble(),
      icon: json['weather'][0]['icon'],
    );
  }
}