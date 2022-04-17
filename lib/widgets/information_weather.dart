import 'package:flutter/material.dart';
import 'package:weather_app/config/date_time.dart';
import 'package:weather_app/config/styles.dart';
import 'package:weather_app/models/weather.dart';

Widget informationWeather(Weather weather) {
  return Container(
    padding: const EdgeInsets.only(left: 15, top: 25, bottom: 25, right: 15),
    margin: const EdgeInsets.only(left: 15, top: 5, bottom: 5, right: 15),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(20)),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.1),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3),
        )
      ]
    ),
    child: Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Container(
                child: Text(
                  "Gió",
                  style: Styles.titleInformation
                )
              ),
              Container(
                child: Text(
                  "${weather.windSpeed} m/s",
                  style: Styles.itemInformation
                )
              )
            ],
          )
        ),
        Expanded(
          child: Column(
            children: [
              Container(
                child: Text(
                  "Độ ẩm",
                  style: Styles.titleInformation
                )
              ),
              Container(
                child: Text(
                  "${weather.humidity.toInt()}%",
                  style: Styles.itemInformation
                )
              )
            ],
          )
        ),
        Expanded(
          child: Column(
            children: [
              Container(
                child: Text(
                  "Áp suất",
                  style: Styles.titleInformation
                )
              ),
              Container(
                child: Text(
                  "${weather.pressure.toInt()} hPa",
                  style: Styles.itemInformation
                )
              )
            ],
          )
        )
      ],
    ),
  );
}

Widget expandWeather (Weather weather){
  return Container(
    padding: const EdgeInsets.only(left: 15, top: 25, bottom: 25, right: 15),
    margin: const EdgeInsets.only(left: 15, top: 5, bottom: 5, right: 15),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(20)),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.1),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3),
        )
      ]
    ),
    child: Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Container(
                child: Text(
                  "Bình minh",
                  style: Styles.titleInformation
                )
              ),
              Container(
                child: Text(
                  "${getTime(weather.sunrise)}",
                  style: Styles.itemInformation
                )
              )
            ],
          )
        ),
        Expanded(
          child: Column(
            children: [
              Container(
                child: Text(
                  "Hoàng hôn",
                  style: Styles.titleInformation
                )
              ),
              Container(
                child: Text(
                  "${getTime(weather.sunset)}",
                  style: Styles.itemInformation
                )
              )
            ],
          )
        ),      
      ],
    ),
  );
}

