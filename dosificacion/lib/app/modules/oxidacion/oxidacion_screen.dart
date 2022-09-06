import 'package:dosificacion/app/core/themes/app_theme.dart';
import 'package:dosificacion/app/core/utils/barrel_files/controllers.dart';
import 'package:dosificacion/app/core/utils/barrel_files/global_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OxidacionScreen extends StatelessWidget {
  const OxidacionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final RxDouble caudalTotal = Get.find<GlobalController>().caudalTotal;
    return Scaffold(
        appBar: AppBar(title: const Center(child: Text('DIOXIDO DE CLORO'))),
        body: GetBuilder<OxidacionController>(
          builder: (_) {
            return SingleChildScrollView(
                child: Column(
              children: [
                //TODO: valores verdaderos
                CaudalesCard(titulo: 'Caudal de entrada', caudal: caudalTotal),
                Card(
                  child: Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(10),
                      width: double.infinity,
                      height: size.height * 0.5,
                      decoration: AppTheme.decorationContainer,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          //TODO: definir funcionalidad
                          children: [
                            CustomInputField(
                              label: 'Concentracion Dioxido de Cloro',
                              hintText: 'Ingrese un valor',
                            ),
                            CustomInputField(
                                label: 'Aforo Dioxido de Cloro',
                                hintText: 'Ingrese un valor'),
                            CustomInputField(
                                label: 'PPM Dioxido de Cloro',
                                hintText: 'Ingrese un valor'),
                            CustomRowButtons(),
                          ])),
                ),
              ],
            ));
          },
        ));
  }
}
