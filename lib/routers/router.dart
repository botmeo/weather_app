import 'package:get/get.dart';
import 'package:weather_app/api/provider/weather_provider.dart';
import 'package:weather_app/api/repository/weather_repository.dart';
import 'package:weather_app/controllers/loading_controller.dart';
import 'package:weather_app/views/home_page.dart';
import 'package:weather_app/views/loading_page.dart';

enum ERouter {
  loadingPage,
  homePage,
  errorPage,
}

extension ERouterExt on ERouter {
  String get name {
    switch (this) {
      case ERouter.loadingPage:
        return '/loading_page';
      case ERouter.homePage:
        return '/home_page';
      case ERouter.errorPage:
        return '/error_page';
      default:
        return "/";
    }
  }
}

class RouterPage {
  static final routers = [
    GetPage(
      name: ERouter.loadingPage.name,
      page: () => LoadingPage(),
      binding: LoadingPageBinding(),
    ),
    GetPage(
      name: ERouter.homePage.name,
      page: () => HomePage(),
      binding: HomePageBinding(),
    ),
  ];
}

class LoadingPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(LoadingController());
  }
}

class HomePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IWeatherProvider>(
      () => WeatherProviderAPI(),
      fenix: true,
    );
    Get.lazyPut<IWeatherRepository>(
      () => WeatherRepository(provider: Get.find()),
      fenix: true,
    );
  }
}
