import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:weather_app/routers/router.dart';

class LoadingController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    checkConnectivity();
  }

  Future<void> checkConnectivity() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult != ConnectivityResult.none) {
      Get.offAllNamed(ERouter.homePage.name);
    } else {
      Get.offAllNamed(ERouter.errorPage.name);
    }
  }
}
