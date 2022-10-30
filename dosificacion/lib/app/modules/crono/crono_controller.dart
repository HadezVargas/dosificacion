import 'package:get/get.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

class CronoController extends GetxController {
  final StopWatchTimer _stopWatch = StopWatchTimer(mode: StopWatchMode.countUp);

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
