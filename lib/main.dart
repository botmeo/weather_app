import 'package:flutter/material.dart';
import 'package:weather_app/views/loading_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(),
      home: LoadingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
