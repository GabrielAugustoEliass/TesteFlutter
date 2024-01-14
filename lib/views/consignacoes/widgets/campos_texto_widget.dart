// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CamposTexto extends StatelessWidget {
  final String title;
  final TextEditingController controllerCampos;
  final TextInputType textInputType;
  const CamposTexto({
    super.key,
    required this.title,
    required this.controllerCampos,
    required this.textInputType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(19.0),
      child: TextFormField(
        keyboardType: textInputType,
        controller: controllerCampos,
        decoration: InputDecoration(
          hintText: title,
        ),
      ),
    );
  }
}
