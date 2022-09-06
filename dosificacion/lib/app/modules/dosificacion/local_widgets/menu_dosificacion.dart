import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:dosificacion/app/core/utils/barrel_files/routers.dart';

class MenuDosificacion extends StatelessWidget {
  ///esta funcion se encarga de guardar en base de datos.
  final Function function;

  const MenuDosificacion({super.key, required this.function});

  @override
  Widget build(BuildContext context) {
    final menuDosificacion = DosificacionRoute.menuDosificacionOptions;

    return SizedBox(
        width: double.infinity,
        height: double.maxFinite,
        child: ListView.separated(
          itemCount: menuDosificacion.length,
          separatorBuilder: (_, __) => const Divider(),
          itemBuilder: (_, i) => ListTile(
            leading: Icon(menuDosificacion[i].icon),
            title: Text(menuDosificacion[i].name),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            onTap: () {
              function();
              Get.toNamed(menuDosificacion[i].route);
            },
          ),
        ));
  }
}
