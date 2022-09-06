import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

import 'package:dosificacion/app/core/themes/app_theme.dart';

class CaudalesCard extends StatelessWidget {
  const CaudalesCard({Key? key, required this.titulo, required this.caudal})
      : super(key: key);

  final String titulo;
  final RxDouble caudal;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
          margin: const EdgeInsets.all(5),
          padding: const EdgeInsets.all(10),
          width: double.infinity,
          decoration: AppTheme.decorationContainer,
          child: Column(
            children: [
              Text(titulo),
              Obx(() => Text(
                    caudal.value.toString(),
                    style: const TextStyle(fontSize: 25),
                  ))
            ],
          )),
    );
  }
}
