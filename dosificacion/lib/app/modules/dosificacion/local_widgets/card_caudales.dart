import 'package:dosificacion/app/modules/dosificacion/local_widgets/input_caudal_canaleta.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardCaudales extends StatelessWidget {
  const CardCaudales({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: const [
          InputCaudalCanaleta(modulo: 'modulo 1'),
          InputCaudalCanaleta(modulo: 'modulo 2')
        ],
      ),
    );
  }
}
