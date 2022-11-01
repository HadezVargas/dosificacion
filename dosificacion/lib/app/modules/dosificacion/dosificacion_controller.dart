import 'package:get/get.dart';

import 'package:dosificacion/app/core/utils/barrel_files/providers.dart';

class DosificacionController extends GetxController {
  double alturaCanaleta_1 = 0;
  double alturaCanaleta_2 = 0;

  Function caudal = FormulasProvider.caudal;
}
