/**
 * Este archivo guarda toda la informacion que se necesita
 * en toda la aplicacion
 */

import 'package:get/get.dart';

class GlobalController extends GetxController {
  RxDouble _caudal_Modulo_1 = 0.0.obs;
  RxDouble _caudal_Modulo_2 = 0.0.obs;
  RxDouble _caudal_Total = 220.0.obs;

  RxDouble get caudalModulo1 => _caudal_Modulo_1;
  RxDouble get caudalModulo2 => _caudal_Modulo_2;
  RxDouble get caudalTotal => _caudal_Total;
}
