// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_teste_flutter/shared/app_bar_padrao/app_bar_padrao.dart';
import 'package:app_teste_flutter/shared/items_menu_inferior/items_menu_inferior.dart';
import 'package:app_teste_flutter/views/inical_page/widgets/card_consignacoes_widget.dart';
import 'package:app_teste_flutter/views/inical_page/widgets/card_margem_widget.dart';
import 'package:flutter/material.dart';

class InicialPage extends StatefulWidget {
  const InicialPage({super.key});

  @override
  State<InicialPage> createState() => _InicialPageState();
}

class _InicialPageState extends State<InicialPage> {
  @override
  Widget build(BuildContext context) {
    final larguraTela = MediaQuery.of(context).size.width;
    final alturaTela = MediaQuery.of(context).size.height;

    return Scaffold(
      bottomNavigationBar: ItemsMenuInferior(
        larguraTela: larguraTela,
        alturaTela: alturaTela,
      ),
      appBar: AppBarPadrao(
        title: Image.asset('images/imageSicon.png'),
        showCallBack: false,
      ),
      body: ListView(
        children: [
          CardMargemWidget(
            alturaTela: alturaTela,
            larguraTela: larguraTela,
          ),
          SizedBox(height: 1),
          CardConsignacoesWidgets(
            alturaTela: alturaTela,
            larguraTela: larguraTela,
          ),
        ],
      ),
    );
  }
}
