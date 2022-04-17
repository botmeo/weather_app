import 'package:flutter/material.dart';
import 'package:weather_app/config/date_time.dart';
import 'package:weather_app/config/icon.dart';
import 'package:weather_app/models/forecast.dart';

Widget dailyForecast(Forecast forecast) {
  return Expanded(
    child: ListView.builder(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      padding: EdgeInsets.only(left: 8, top: 10, bottom: 10, right: 8),
      itemCount: forecast.daily.length-1,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5, right: 10),
          margin: const EdgeInsets.all(5),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "${getDate(forecast.daily[index+1].dt)}",
                    style: TextStyle(
                      fontFamily: 'Oswald',
                      fontSize: 14,
                      color: Colors.black
                    ),
                  )
                ),
                Expanded(
                  child: getWeatherIcon(forecast.daily[index+1].icon)
                ),
                Expanded(
                  child: Text(
                    "${forecast.daily[index+1].high.toInt()}°/ ${forecast.daily[index+1].low.toInt()}°",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontFamily: 'Oswald', 
                      fontSize: 14, 
                      color: Colors.grey
                    ),
                  )
                ),
              ]
            )
        );
      }
    )
  );
}
