import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/themes/app_theme.dart';
import '../../../core/utils/barrel_files/global_widgets.dart';

class InputCaudalCanaleta extends StatelessWidget {
  ///[modulo] recibe un string con el numero del modulo que se va a mostrar
  final String modulo;
  const InputCaudalCanaleta({Key? key, required this.modulo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(2),
        decoration: AppTheme.decorationContainer,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.only(
                    left: 5, right: 5, top: 10, bottom: 5),
                child: CustomInputField(
                  label: 'Canaleta modulo $modulo',
                  hintText: 'Altura canaleta',
                )),
            Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  'Caudal modulo $modulo',
                )),
            Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  'hola yo',
                  style: TextStyle(fontStyle: FontStyle.italic, fontSize: 25),
                )),
          ],
        ),
      ),
    );
  }
}
