// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:app_teste_flutter/shared/constants/colors.dart';
import 'package:app_teste_flutter/views/inical_page/pages/inicial_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomLoginWidget extends StatelessWidget {
  const BottomLoginWidget({
    super.key,
    required this.larguraTela,
    required this.alturaTela,
  });
  final double larguraTela;
  final double alturaTela;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: ElevatedButton(
        onPressed: () {
          Get.to(InicialPage());
        },
        child: Text('Acessar'),
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorsApp.corAzulApp,
          fixedSize: Size(larguraTela, alturaTela * 0.058),
        ),
      ),
    );
  }
}
