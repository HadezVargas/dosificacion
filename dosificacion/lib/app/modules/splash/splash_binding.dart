import 'package:get/get.dart';

import 'package:dosificacion/app/modules/Splash/splash_controller.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController());
  }
}
