import 'package:flutter/material.dart';

class AppStyle {
  static const textTheme = TextTheme(
    bodySmall: TextStyle(
      fontFamily: 'Oswald',
      fontWeight: FontWeight.w400,
      fontSize: 12,
      color: Colors.white,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'Oswald',
      fontWeight: FontWeight.w600,
      fontSize: 12,
      color: Colors.grey,
    ),
    bodyLarge: TextStyle(
      fontFamily: 'Oswald',
      fontWeight: FontWeight.w700,
      fontSize: 12,
      color: Colors.black,
    ),
    titleMedium: TextStyle(
      fontFamily: 'Oswald',
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
  );

  static const TextStyle itemCurrent = TextStyle(
    fontFamily: 'Oswald',
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  static const TextStyle titleInformation = TextStyle(
    fontFamily: 'Oswald',
    fontWeight: FontWeight.w600,
    fontSize: 12,
    color: Colors.grey,
  );

  static const TextStyle itemInformation = TextStyle(
    fontFamily: 'Oswald',
    fontWeight: FontWeight.w700,
    fontSize: 15,
    color: Colors.black,
  );
}
