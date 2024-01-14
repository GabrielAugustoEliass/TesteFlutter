// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_local_variable, use_key_in_widget_constructors

import 'package:app_teste_flutter/controller/controller_card_consignacoes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../shared/constants/colors.dart';

class CardConsignacoesWidgets extends StatefulWidget {
  const CardConsignacoesWidgets({
    Key? key,
    required this.alturaTela,
    required this.larguraTela,
  });

  final double larguraTela;
  final double alturaTela;
  @override
  State<CardConsignacoesWidgets> createState() =>
      _CardConsignacoesWidgetsState();
}

class _CardConsignacoesWidgetsState extends State<CardConsignacoesWidgets> {
  @override
  Widget build(BuildContext context) {
    final double larguraTela = MediaQuery.of(context).size.width;
    final double alturaTela = MediaQuery.of(context).size.height;
    final c = Get.put(ControllerCardConsignacoes());

    return Padding(
      padding: EdgeInsets.only(
        top: alturaTela * 0.002,
        left: larguraTela * 0.01,
        right: larguraTela * 0.01,
      ),
      child: SizedBox(
        height: alturaTela * 0.18,
        width: larguraTela * 0.9,
        child: Obx(
          () => ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: c.listaConsignacoes.length,
            itemBuilder: (context, index) {
              return SizedBox(
                height: alturaTela * 0.9,
                width: larguraTela * 0.97,
                child: Card(
                  elevation: 2,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: alturaTela * 0.01,
                      left: larguraTela * 0.03,
                      right: larguraTela * 0.03,
                      bottom: alturaTela * 0.015,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                    fontSize: larguraTela * 0.04,
                                    color: Colors.black,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'Tipo Serviço: ',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text: c
                                          .listaConsignacoes[index].nomeServico,
                                      style: TextStyle(
                                        fontSize: larguraTela * 0.045,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Icon(
                                Icons.visibility_outlined,
                                color: ColorsApp.corAzulApp,
                                size: larguraTela * 0.06,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: widget.alturaTela * 0.004),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  fontSize: widget.larguraTela * 0.04,
                                  color: Colors.black,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Nome de: ',
                                    style: TextStyle(),
                                  ),
                                  TextSpan(
                                    text:
                                        c.listaConsignacoes[index].nomeUsuario,
                                    style: TextStyle(
                                      fontSize: larguraTela * 0.045,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: alturaTela * 0.02),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Valor Usado:',
                                  style: TextStyle(
                                    fontSize: larguraTela * 0.04,
                                  ),
                                ),
                                SizedBox(height: 2),
                                Text(
                                  'R\$ ${c.listaConsignacoes[index].valorDisponivel}',
                                  style: TextStyle(
                                    color: ColorsApp.corLaranja,
                                    fontSize: larguraTela * 0.044,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'Valor Empréstimo:',
                                  style: TextStyle(
                                    fontSize: larguraTela * 0.04,
                                    color: ColorsApp.corAzulApp,
                                  ),
                                ),
                                Text(
                                  'R\$ ${c.listaConsignacoes[index].valorDisponivel}',
                                  style: TextStyle(
                                    fontSize: larguraTela * 0.054,
                                    color: ColorsApp.corAzulApp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
