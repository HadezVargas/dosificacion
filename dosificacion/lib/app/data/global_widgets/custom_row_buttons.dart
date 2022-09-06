import 'package:flutter/material.dart';

class CustomRowButtons extends StatelessWidget {
  const CustomRowButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      ElevatedButton(
        child: const Text('PPM'),
        onPressed: () {},
      ),
      ElevatedButton(
        child: const Text('AFORO'),
        onPressed: () {},
      ),
    ]);
  }
}
