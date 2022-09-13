import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/themes/app_theme.dart';
import '../../core/utils/barrel_files/controllers.dart';
import '../../core/utils/barrel_files/global_widgets.dart';

class EstabilizacionScreen extends StatelessWidget {
  const EstabilizacionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final RxDouble caudalTotal = Get.find<GlobalController>().caudalTotal;
    return Scaffold(
        appBar: AppBar(title: const Center(child: Text('CAL'))),
        body: GetBuilder<EstabilizacionController>(
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
                              label: 'Concentracion CAL',
                              hintText: 'Ingrese un valor',
                            ),
                            CustomInputField(
                                label: 'Aforo CAL',
                                hintText: 'Ingrese un valor'),
                            CustomInputField(
                                label: 'PPM CAL', hintText: 'Ingrese un valor'),
                            CustomRowButtons(),
                          ])),
                ),
                const CustomCrono()
              ],
            ));
          },
        ));
  }
}
