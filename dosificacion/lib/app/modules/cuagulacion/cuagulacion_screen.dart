import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CuagulacionScreen extends StatelessWidget {
  const CuagulacionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Cuagulacion Screen'))),
      body: const SafeArea(
        child: Center(child: Text('Cuagulacion Screen')),
      ),
    );
  }
}
