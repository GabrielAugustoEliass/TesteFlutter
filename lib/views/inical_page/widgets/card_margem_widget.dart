// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_local_variable, use_key_in_widget_constructors

import 'package:app_teste_flutter/controller/controller_linearProgress.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../shared/constants/colors.dart';

class CardMargemWidget extends StatefulWidget {
  const CardMargemWidget({
    Key? key,
    required this.alturaTela,
    required this.larguraTela,
  });

  final double larguraTela;
  final double alturaTela;

  @override
  State<CardMargemWidget> createState() => _CardMargemWidgetState();
}

class _CardMargemWidgetState extends State<CardMargemWidget> {
  final c = Get.put(ControllerlinearProgress());

  @override
  Widget build(BuildContext context) {
    final valorFinal = c.margemUtilizada.value - c.valorBruto.value;
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          top: widget.alturaTela * 0.012,
          left: widget.larguraTela * 0.01,
          right: widget.larguraTela * 0.01,
        ),
        child: Card(
          elevation: 2,
          child: Padding(
            padding: EdgeInsets.only(
              top: widget.alturaTela * 0.01,
              left: widget.larguraTela * 0.03,
              right: widget.larguraTela * 0.03,
              bottom: widget.alturaTela * 0.015,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Margem Empréstimo',
                        style: TextStyle(
                          fontSize: widget.larguraTela * 0.051,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Icon(
                        Icons.visibility_outlined,
                        color: ColorsApp.corAzulApp,
                        size: widget.larguraTela * 0.062,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: widget.alturaTela * 0.022),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Margem Utilizada:',
                      style: TextStyle(
                        color: ColorsApp.corLaranja,
                        fontSize: widget.larguraTela * 0.047,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'R\$ ${c.margemUtilizada}',
                      style: TextStyle(
                        color: ColorsApp.corLaranja,
                        fontSize: widget.larguraTela * 0.044,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: widget.alturaTela * 0.02),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Margem Bruta:',
                          style: TextStyle(
                            fontSize: widget.larguraTela * 0.047,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          'R\$ ${c.valorBruto}',
                          style: TextStyle(
                            fontSize: widget.larguraTela * 0.044,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Margem Disponivel:',
                          style: TextStyle(
                            fontSize: widget.larguraTela * 0.047,
                            color: ColorsApp.corAzulApp,
                          ),
                        ),
                        Text(
                          'R\$ $valorFinal',
                          style: TextStyle(
                            fontSize: widget.larguraTela * 0.074,
                            color: ColorsApp.corAzulApp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: widget.alturaTela * 0.01),
                LinearProgressIndicator(
                  value: c.margemUtilizada.value / c.valorBruto.value,
                  color: ColorsApp.corAzulApp,
                  backgroundColor: ColorsApp.corLaranja,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
