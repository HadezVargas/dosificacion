import 'package:dosificacion/app/core/utils/barrel_files/routers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:dosificacion/app/core/themes/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: DosificacionRoute.initialRoute,
      getPages: DosificacionRoute.getAppRoutesDosificacion(),
      theme: AppTheme.lightTheme,
    );
  }
}
