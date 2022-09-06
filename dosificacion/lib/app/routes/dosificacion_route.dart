import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:dosificacion/app/core/utils/barrel_files/bindings.dart';
import 'package:dosificacion/app/core/utils/barrel_files/models.dart';
import 'package:dosificacion/app/core/utils/barrel_files/screens.dart';

class DosificacionRoute {
  static const initialRoute = '/dosificacion';

  static final menuDosificacionOptions = <MenuDosificacionOptionsModel>[
    MenuDosificacionOptionsModel(
        route: '/oxidacion',
        name: 'DIOXIDO DE CLORO',
        screen: const OxidacionScreen(),
        icon: Icons.invert_colors_on_rounded,
        binding: OxidaxionBinding()),
    MenuDosificacionOptionsModel(
        route: '/absorcion',
        name: 'CARBON',
        screen: const AbsorcionScreen(),
        icon: Icons.invert_colors_on_rounded,
        binding: AbsorcionBinding()),
    MenuDosificacionOptionsModel(
        route: '/cuagulacion',
        name: 'PAC',
        screen: const CuagulacionScreen(),
        icon: Icons.invert_colors_on_rounded,
        binding: CuagulacionBinding()),
    MenuDosificacionOptionsModel(
        route: '/floculacion',
        name: 'POLIMERO',
        screen: const FloculacionScreen(),
        icon: Icons.invert_colors_on_rounded,
        binding: FloculacionBinding()),
    MenuDosificacionOptionsModel(
        route: '/estabilizacion',
        name: 'CAL',
        screen: const EstabilizacionScreen(),
        icon: Icons.invert_colors_on_rounded,
        binding: EstabilizacionBinding()),
    MenuDosificacionOptionsModel(
        route: '/desinfeccion',
        name: 'HIPOCLORITO',
        screen: const DesinfeccionScreen(),
        icon: Icons.invert_colors_on_rounded,
        binding: DesinfeccionBinding()),
    MenuDosificacionOptionsModel(
        route: '/crono',
        name: 'CRONO',
        screen: const CronoScreen(),
        icon: Icons.invert_colors_on_rounded,
        binding: CronoBinding()),
  ];

  static List<GetPage<dynamic>>? getAppRoutesDosificacion() {
    List<GetPage<dynamic>>? appRoutes = [];
    appRoutes.addAll({
      GetPage(
          name: '/dosificacion',
          page: (() => const DosificacionScreen()),
          binding: DosificacionBinding())
    });
    for (final option in menuDosificacionOptions) {
      appRoutes.addAll({
        GetPage(
            name: option.route,
            page: () => option.screen,
            binding: option.binding)
      });
    }
    return appRoutes;
  }
}
