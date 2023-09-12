import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/common/app_style.dart';
import 'package:weather_app/common/date_time_extension.dart';
import 'package:weather_app/controllers/home_controller.dart';

class ExpandWeather extends StatelessWidget {
  const ExpandWeather({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find();

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(
            left: 15,
            top: 25,
            bottom: 25,
            right: 15,
          ),
          margin: const EdgeInsets.only(
            left: 15,
            top: 5,
            bottom: 5,
            right: 15,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
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
                  children: [
                    Text(
                      "Gió",
                      style: AppStyle.textTheme.bodyMedium,
                    ),
                    Text(
                      "${controller.currentWeather!.wind!.speed} m/s",
                      style: AppStyle.textTheme.bodyLarge?.copyWith(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      "Độ ẩm",
                      style: AppStyle.textTheme.bodyMedium,
                    ),
                    Text(
                      "${controller.currentWeather!.main!.humidity!.toInt()}%",
                      style: AppStyle.textTheme.bodyLarge?.copyWith(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      "Áp suất",
                      style: AppStyle.textTheme.bodyMedium,
                    ),
                    Text(
                      "${controller.currentWeather!.main!.pressure!.toInt()} hPa",
                      style: AppStyle.textTheme.bodyLarge?.copyWith(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(
            left: 15,
            top: 25,
            bottom: 25,
            right: 15,
          ),
          margin: const EdgeInsets.only(
            left: 15,
            top: 5,
            bottom: 5,
            right: 15,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
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
                  children: [
                    Text(
                      "Bình minh",
                      style: AppStyle.textTheme.bodyMedium,
                    ),
                    Text(
                      "${DatetimeExtension.getTime(controller.currentWeather!.sys!.sunrise)}",
                      style: AppStyle.textTheme.bodyLarge?.copyWith(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      "Hoàng hôn",
                      style: AppStyle.textTheme.bodyMedium,
                    ),
                    Text(
                      "${DatetimeExtension.getTime(controller.currentWeather!.sys!.sunset)}",
                      style: AppStyle.textTheme.bodyLarge?.copyWith(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
