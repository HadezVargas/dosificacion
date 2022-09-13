import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/themes/app_theme.dart';
import '../../core/utils/barrel_files/controllers.dart';
import '../../core/utils/barrel_files/global_widgets.dart';

class CronoScreen extends StatelessWidget {
  const CronoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final globalController = Get.find<GlobalController>();
    final stopWatch = globalController.stopWatch;
    final display = globalController.displayTime;
    final start = globalController.start;
    final stop = globalController.stop;
    final reset = globalController.reset;
    final setSeconds = globalController.setSeconds;
    final controllerTime = TextEditingController();
    bool isPlaying = false;
    return SingleChildScrollView(
      child: StreamBuilder<int>(
        stream: stopWatch.rawTime,
        initialData: stopWatch.rawTime.value,
        builder: (context, snap) {
          final value = snap.data!;
          final displayTime = display(value);
          controllerTime.text = displayTime;
          return Card(
              child: Container(
            margin: const EdgeInsets.all(5),
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            decoration: AppTheme.decorationContainer,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomInputField(
                  controller: controllerTime,
                  label: 'Tiempo de aforo (s)',
                  hintText: 'ingrese un valor',
                  setFunction: setSeconds,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  IconButton(
                      onPressed: () => setSeconds(),
                      icon: const Icon(Icons.timelapse),
                      color: AppTheme.primary,
                      iconSize: 35),
                  IconButton(
                    onPressed: () {
                      if (isPlaying == false) {
                        start();
                        isPlaying = !isPlaying;
                      } else {
                        stop();
                        isPlaying = !isPlaying;
                      }
                    },
                    icon: isPlaying
                        ? const Icon(Icons.pause_circle_filled_outlined)
                        : const Icon(Icons.play_circle_fill_outlined),
                    color: AppTheme.primary,
                    iconSize: 55,
                  ),
                  IconButton(
                      onPressed: () => reset(),
                      icon: const Icon(Icons.refresh_outlined),
                      color: AppTheme.primary,
                      iconSize: 35)
                ])
              ],
            ),
          ));
        },
      ),
    );
  }
}
