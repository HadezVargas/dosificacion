import 'package:flutter/material.dart';

import '../../core/themes/app_theme.dart';
import '../../core/utils/barrel_files/global_widgets.dart';

class CustomCardConcentracion extends StatelessWidget {
  const CustomCardConcentracion({
    Key? key,
    required this.reactivo,
  }) : super(key: key);
  final String reactivo;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        decoration: AppTheme.decorationContainer,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomInputField(
              label: 'Concentracion $reactivo',
              hintText: 'ingrese un valor',
            )
          ],
        ),
      ),
    );
  }
}
