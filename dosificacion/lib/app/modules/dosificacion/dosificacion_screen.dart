import 'package:dosificacion/app/modules/dosificacion/local_widgets/card_caudales.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:dosificacion/app/core/themes/app_theme.dart';
import 'package:dosificacion/app/core/utils/barrel_files/controllers.dart';
import 'package:dosificacion/app/modules/dosificacion/local_widgets/menu_dosificacion.dart';

class DosificacionScreen extends StatelessWidget {
  const DosificacionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DosificacionController>(builder: (_) {
      return Scaffold(
          appBar: AppBar(title: const Center(child: Text('Dosificacion'))),
          body: SingleChildScrollView(
              child: Column(
            children: [
              const CardCaudales(),
              Container(
                decoration: AppTheme.decorationContainer,
                //TODO: cambiar la funcion por la de guardar en base de datos
                child: MenuDosificacion(function: () {}),
              )
            ],
          )));
    });
  }
}
