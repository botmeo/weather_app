import 'package:flutter/material.dart';

Image getWeatherIcon(String icon) {
  String path = 'assets/icons/';
  String imageExtension = ".png";
  return Image.asset(
    path + icon + imageExtension,
    width: 40,
    height: 40,
  );
}

extension GetStringExtension on String {
  String capitalizeString() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}
