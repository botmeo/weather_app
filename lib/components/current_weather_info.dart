import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/common/app_colors.dart';
import 'package:weather_app/common/app_style.dart';
import 'package:weather_app/common/utils.dart';
import 'package:weather_app/controllers/home_controller.dart';

class CurrentWeatherInfo extends StatelessWidget {
  const CurrentWeatherInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find();

    return Container(
      padding: const EdgeInsets.only(
        left: 20,
        top: 25,
        bottom: 25,
        right: 20,
      ),
      margin: const EdgeInsets.only(
        left: 15,
        top: 5,
        bottom: 5,
        right: 15,
      ),
      decoration: BoxDecoration(
        color: AppColors.green,
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.17),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hà Nội',
                  style: AppStyle.textTheme.titleMedium?.copyWith(
                    fontSize: 30,
                  ),
                ),
                Row(
                  children: [
                    getWeatherIcon(
                        controller.currentWeather!.weather![0].icon!),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      '${controller.currentWeather!.main!.temp!.toInt()}°',
                      style: AppStyle.textTheme.titleMedium?.copyWith(
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${controller.currentWeather!.weather![0].description!.capitalizeString()}',
                  style: AppStyle.textTheme.titleMedium,
                ),
                Text(
                  '${controller.currentWeather!.main!.tempMin!.toInt()}°/ ${controller.currentWeather!.main!.tempMax!.toInt()}°',
                  style: AppStyle.textTheme.titleMedium,
                ),
                Text(
                  'Cảm giác như ${controller.currentWeather!.main!.feelsLike!.toInt()}°',
                  style: AppStyle.textTheme.titleMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
