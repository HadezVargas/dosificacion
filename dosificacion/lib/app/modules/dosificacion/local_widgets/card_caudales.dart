import 'package:dosificacion/app/core/utils/barrel_files/controllers.dart';
import 'package:dosificacion/app/modules/dosificacion/local_widgets/input_caudal_canaleta.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardCaudales extends StatelessWidget {
  CardCaudales({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalController global = Get.find<GlobalController>();
    final setCaudal1 = global.setcaudalModulo1;
    final setCaudal2 = global.setcaudalModulo2;
    final caudal1 = global.caudalModulo1;
    final caudal2 = global.caudalModulo2;
    return GetBuilder<DosificacionController>(
      builder: (_) {
        Function funcionCaudal = _.caudal;
        return Card(
          child: Row(
            children: [
              InputCaudalCanaleta(
                modulo: 'modulo 1',
                funcionCaudal: funcionCaudal,
                setCaudal: setCaudal1,
                caudal: caudal1,
              ),
              InputCaudalCanaleta(
                modulo: 'modulo 2',
                funcionCaudal: funcionCaudal,
                setCaudal: setCaudal2,
                caudal: caudal2,
              )
            ],
          ),
        );
      },
    );
  }
}
