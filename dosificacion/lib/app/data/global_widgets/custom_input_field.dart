import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({
    Key? key,
    this.function,
    this.setFunction,
    this.label,
    this.hintText,
    this.initialValue,
    this.captura,
    this.controller,
    this.funcionCaudal,
    this.setcaudal,
  }) : super(key: key);
  //TODO: definir que son cada una de estos atributos
  final Function? funcionCaudal;
  final Function? setcaudal;
  final Function? function;
  final Function? setFunction;
  final String? label;
  final String? hintText;
  final String? initialValue;
  final String? captura;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      initialValue: initialValue,
      autofocus: false,
      decoration: InputDecoration(
        labelText: label,
        hintText: hintText,
      ),
      style: const TextStyle(fontSize: 18),
      keyboardType: TextInputType.number,
      onChanged: (value) {
        setcaudal!(funcionCaudal!(double.parse(value)));
      },
    );
  }
}
