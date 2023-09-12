import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/common/app_colors.dart';
import 'package:weather_app/common/app_style.dart';
import 'package:weather_app/common/date_time_extension.dart';
import 'package:weather_app/common/utils.dart';
import 'package:weather_app/controllers/home_controller.dart';
import 'package:weather_app/components/current_weather_info.dart';
import 'package:weather_app/components/expand_weather.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());

    return Scaffold(
      body: GetBuilder<HomeController>(
        builder: (controller) {
          if (controller.currentWeather == null ||
              controller.forecastWeather == null) {
            return SafeArea(
              child: Center(
                child: CircularProgressIndicator(
                  color: AppColors.green,
                ),
              ),
            );
          } else {
            return SafeArea(
              child: Column(
                children: [
                  _CurrentWeather(),
                  _ForecastWeather(),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}

class _CurrentWeather extends StatelessWidget {
  const _CurrentWeather({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CurrentWeatherInfo(),
        ExpandWeather(),
      ],
    );
  }
}

class _ForecastWeather extends StatelessWidget {
  const _ForecastWeather({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());

    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        padding: EdgeInsets.only(
          left: 8,
          top: 10,
          bottom: 10,
          right: 8,
        ),
        itemCount: controller.forecastWeather!.daily!.length - 1,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: const EdgeInsets.only(
              left: 10,
              top: 5,
              bottom: 5,
              right: 10,
            ),
            margin: const EdgeInsets.all(5),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "${DatetimeExtension.getDate(controller.forecastWeather!.daily![index + 1].dt)}",
                    style: AppStyle.textTheme.bodySmall?.copyWith(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ),
                Expanded(
                  child: getWeatherIcon(controller
                      .forecastWeather!.daily![index + 1].weather![0].icon!),
                ),
                Expanded(
                  child: Text(
                    '${controller.forecastWeather!.daily![index + 1].temp!.max!.toInt()}°/ ${controller.forecastWeather!.daily![index + 1].temp!.min!.toInt()}°',
                    textAlign: TextAlign.right,
                    style: AppStyle.textTheme.bodySmall?.copyWith(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
