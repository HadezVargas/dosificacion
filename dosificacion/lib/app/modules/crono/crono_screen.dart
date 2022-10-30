import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/themes/app_theme.dart';
import '../../core/utils/barrel_files/controllers.dart';
import '../../core/utils/barrel_files/global_widgets.dart';

class CronoScreen extends StatelessWidget {
  const CronoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controllerTime = TextEditingController();
    bool isPlaying = false;
    return GetBuilder<CronoController>(builder: (_) {
      return SingleChildScrollView(
        child: Card(
          child: Container(
            margin: const EdgeInsets.all(5),
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            decoration: AppTheme.decorationContainer,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // CustomInputField(
                //   // controller: controllerTime,
                //   label: 'Tiempo de aforo (s)',
                //   hintText: 'ingrese un valor',
                // ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  IconButton(
                      onPressed: () => _.setSeconds(),
                      icon: const Icon(Icons.timelapse),
                      color: AppTheme.primary,
                      iconSize: 35),
                  IconButton(
                    onPressed: () {
                      if (isPlaying == false) {
                        _.start();
                        isPlaying = !isPlaying;
                      } else {
                        _.stop();
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
                      onPressed: () => _.reset(),
                      icon: const Icon(Icons.refresh_outlined),
                      color: AppTheme.primary,
                      iconSize: 35)
                ])
              ],
            ),
          ),
        ),
      );
    });
  }
}
