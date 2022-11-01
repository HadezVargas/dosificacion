/**
 * Este archivo guarda toda la informacion que se necesita
 * en toda la aplicacion
 */

import 'package:get/get.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

class GlobalController extends GetxController {
  final RxDouble _caudalModulo_1 = 0.0.obs;
  final RxDouble _caudalModulo_2 = 0.0.obs;
  final RxDouble _caudalTotal = 220.0.obs;
  final StopWatchTimer _stopWatch = StopWatchTimer(mode: StopWatchMode.countUp);

  RxDouble get caudalModulo1 => _caudalModulo_1;
  RxDouble get caudalModulo2 => _caudalModulo_2;
  RxDouble get caudalTotal => _caudalTotal;
  StopWatchTimer get stopWatch => _stopWatch;

  setcaudalModulo1(double valor) => _caudalModulo_1.value = valor;
  setcaudalModulo2(double valor) => _caudalModulo_2.value = valor;

  /// Funciones para el manejo del cronometro
  void start() => _stopWatch.onExecute.add(StopWatchExecute.start);
  void stop() => _stopWatch.onExecute.add(StopWatchExecute.stop);
  void reset() {
    _stopWatch.clearPresetTime();
    _stopWatch.onExecute.add(StopWatchExecute.reset);
  }

  void setSeconds() => _stopWatch.setPresetSecondTime(5);
  String displayTime(int value) =>
      StopWatchTimer.getDisplayTime(value, hours: true);
}
