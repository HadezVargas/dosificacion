import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:dosificacion/app/core/utils/barrel_files/controllers.dart';
import 'package:dosificacion/app/core/utils/barrel_files/global_widgets.dart';

class CuagulacionScreen extends StatelessWidget {
  const CuagulacionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final globalController = Get.find<GlobalController>();
    final tituloModulo1 = 'Caudal Modulo 1';
    final tituloModulo2 = 'Caudal Modulo 2';
    return Scaffold(
        appBar: AppBar(title: const Center(child: Text('PAC'))),
        body: GetBuilder<CuagulacionController>(builder: (_) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    CustomColumnModulo(
                        tituloModulo1: tituloModulo1,
                        caudal: globalController.caudalModulo1),
                    CustomColumnModulo(
                        tituloModulo1: tituloModulo1,
                        caudal: globalController.caudalModulo2)
                  ],
                )
              ],
            ),
          );
        }));
  }
}