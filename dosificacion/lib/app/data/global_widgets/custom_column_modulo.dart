import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/themes/app_theme.dart';
import '../../core/utils/barrel_files/global_widgets.dart';

class CustomColumnModulo extends StatelessWidget {
  const CustomColumnModulo({
    Key? key,
    required this.tituloModulo1,
    required this.caudal,
  }) : super(key: key);

  final String tituloModulo1;
  final RxDouble caudal;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          CaudalesCard(titulo: tituloModulo1, caudal: caudal),
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
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        child: const Text('PPM'),
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        child: const Text('AFORO'),
                        onPressed: () {},
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
