import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Splash Screen'))),
      body: const SafeArea(
        child: Center(child: Text('Splash Screen')),
      ),
    );
  }
}
