import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CronoScreen extends StatelessWidget {
  const CronoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Crono Screen'))),
      body: const SafeArea(
        child: Center(child: Text('Crono Screen')),
      ),
    );
  }
}
