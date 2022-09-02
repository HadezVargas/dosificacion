import 'package:get/get.dart';

import 'package:dosificacion/app/modules/estabilizacion/estabilizacion_controller.dart';

class EstabilizacionBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EstabilizacionController>(() => EstabilizacionController());
  }
}
