import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:dosificacion/app/core/utils/barrel_files/controllers.dart';
import 'package:dosificacion/app/core/utils/barrel_files/global_widgets.dart';

import '../../core/themes/app_theme.dart';

class DesinfeccionScreen extends StatelessWidget {
  const DesinfeccionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final globalController = Get.find<GlobalController>();
    final tituloModulo1 = 'Caudal Modulo 1';
    final tituloModulo2 = 'Caudal Modulo 2';
    final tituloVertedero = 'Caudal Total';
    return Scaffold(
        appBar: AppBar(title: const Center(child: Text('HIPOCLORITO'))),
        body: GetBuilder<DesinfeccionController>(
          builder: (_) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  const CustomCardConcentracion(reactivo: 'hipoclorito'),
                  Row(
                    children: [
                      CustomColumnModulo(
                          tituloModulo1: tituloModulo1,
                          caudal: globalController.caudalModulo1),
                      CustomColumnModulo(
                          tituloModulo1: tituloModulo2,
                          caudal: globalController.caudalModulo2)
                    ],
                  ),
                  CaudalesCard(
                      titulo: tituloVertedero,
                      caudal: globalController.caudalTotal),
                  Card(
                      child: Container(
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: AppTheme.decorationContainer,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const CustomInputField(),
                        const SizedBox(
                          height: 10,
                        ),
                        const CustomInputField(),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomRowButtons(),
                      ],
                    ),
                  ))
                ],
              ),
            );
          },
        ));
  }
}
