import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/controllers/loading_controller.dart';

class LoadingPage extends StatelessWidget {
  final LoadingController controller = Get.put(LoadingController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GetBuilder<LoadingController>(
          builder: (controller) {
            return SafeArea(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          },
        ),
      ),
    );
  }
}
