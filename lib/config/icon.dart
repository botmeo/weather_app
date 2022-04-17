import 'package:flutter/cupertino.dart';

Image getWeatherIcon(String icon) {
  String path = 'assets/icons/';
  String imageExtension = ".png";
  return Image.asset(
    path + icon + imageExtension,
    width: 40,
    height: 40,
  );
}