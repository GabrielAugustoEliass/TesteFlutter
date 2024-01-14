// ignore_for_file: prefer_const_constructors

import 'package:app_teste_flutter/controller/controller_card_consignacoes.dart';
import 'package:app_teste_flutter/shared/app_bar_padrao/app_bar_padrao.dart';
import 'package:app_teste_flutter/shared/constants/colors.dart';
import 'package:app_teste_flutter/shared/items_menu_inferior/items_menu_inferior.dart';
import 'package:app_teste_flutter/views/consignacoes/widgets/campos_texto_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConsignacoesPage extends StatefulWidget {
  const ConsignacoesPage({super.key});

  @override
  State<ConsignacoesPage> createState() => _ConsignacoesPageState();
}

class _ConsignacoesPageState extends State<ConsignacoesPage> {
  final c = Get.find<ControllerCardConsignacoes>();

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
        title: const Text('Adicionar Consignação'),
        showCallBack: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CamposTexto(
              title: 'Tipo de Serviço',
              controllerCampos: c.controllerServico,
              textInputType: TextInputType.text,
            ),
            CamposTexto(
              title: 'Nome do Usuário',
              controllerCampos: c.controllerNomeUsuario,
              textInputType: TextInputType.text,
            ),
            CamposTexto(
              title: 'Valor Usado',
              controllerCampos: c.controllerValorUsado,
              textInputType: TextInputType.number,
            ),
            CamposTexto(
              title: 'Valor do Empréstimo',
              controllerCampos: c.controllerValorEmprestimo,
              textInputType: TextInputType.number,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorsApp.corAzulApp,
              ),
              onPressed: () {
                setState(() {
                  c.addConsignacao(
                    c.controllerServico.text,
                    c.controllerNomeUsuario.text,
                    c.controllerValorUsado.text,
                    c.controllerValorEmprestimo.text,
                  );
                  c.controllerServico.clear();
                  c.controllerNomeUsuario.clear();
                  c.controllerValorUsado.clear();
                  c.controllerValorEmprestimo.clear();
                  Get.back();
                });
              },
              child: const Text('Adicionar Empréstimo'),
            ),
          ],
        ),
      ),
    );
  }
}
