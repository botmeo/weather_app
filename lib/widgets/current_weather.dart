import 'package:flutter/material.dart';
import 'package:weather_app/config/icon.dart';
import 'package:weather_app/config/styles.dart';
import 'package:weather_app/models/weather.dart';

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}

Widget currentWeather(BuildContext context, Weather weather) {
  return Container(
    padding: const EdgeInsets.only(left: 20, top: 25, bottom: 25, right: 20),
    margin: const EdgeInsets.only(left: 15, top: 5, bottom: 5, right: 15),
    decoration: BoxDecoration(
      color: Color(0xFF68C581),
      borderRadius: BorderRadius.all(Radius.circular(25)),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.17),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3),
        )
      ]
    ),
    child: Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text(
                  'Hà Nội',
                  style: TextStyle(
                    fontFamily: 'Oswald',
                    fontSize: 33,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                )
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    getWeatherIcon(weather.icon),
                    Text(
                      '${weather.temperature.toInt()}°',
                      style: TextStyle(
                        fontFamily: 'Oswald',
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text(
                  '${weather.description.capitalize()}',
                  style: Styles.itemCurrent
                ),
              ),
              Container(
                child: Text(
                  '${weather.low.toInt()}°/ ${weather.high.toInt()}°',
                  style: Styles.itemCurrent
                ),
              ),
              Container(
                child: Text(
                  'Cảm giác như ${weather.feels.toInt()}°',
                  style: Styles.itemCurrent
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}

