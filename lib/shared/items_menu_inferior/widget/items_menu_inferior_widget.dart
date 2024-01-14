// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:app_teste_flutter/shared/constants/colors.dart';
import 'package:flutter/material.dart';

class ItemsMenuInferiorWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function()? onTap;
  const ItemsMenuInferiorWidget({
    Key? key,
    required this.title,
    required this.icon,
    required this.larguraTela,
    required this.alturaTela,
    this.onTap,
  }) : super(key: key);

  final double larguraTela;
  final double alturaTela;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(left: larguraTela * 0.008),
        child: SizedBox(
          width: larguraTela * 0.24,
          height: alturaTela * 0.12,
          child: Card(
            elevation: 3,
            child: Padding(
              padding: EdgeInsets.only(left: 5, bottom: 3),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    icon,
                    size: larguraTela * 0.07,
                    color: ColorsApp.corAzulApp,
                  ),
                  SizedBox(height: larguraTela * 0.010),
                  Text(
                    title,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: larguraTela * 0.033,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
