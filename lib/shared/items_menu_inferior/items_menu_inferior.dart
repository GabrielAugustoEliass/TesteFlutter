// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_teste_flutter/shared/items_menu_inferior/widget/items_menu_inferior_widget.dart';
import 'package:app_teste_flutter/views/consignacoes/pages/consignacoes_pages.dart';
import 'package:app_teste_flutter/views/contatos/pages/contatos_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemsMenuInferior extends StatelessWidget {
  const ItemsMenuInferior({
    super.key,
    required this.larguraTela,
    required this.alturaTela,
  });

  final double larguraTela;
  final double alturaTela;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ItemsMenuInferiorWidget(
          onTap: () {
            Get.to(() => ConsignacoesPage());
          },
          title: 'Consignação',
          icon: Icons.monetization_on_rounded,
          larguraTela: larguraTela,
          alturaTela: alturaTela,
        ),
        ItemsMenuInferiorWidget(
          onTap: () {},
          title: 'Endereço',
          icon: Icons.map,
          larguraTela: larguraTela,
          alturaTela: alturaTela,
        ),
        ItemsMenuInferiorWidget(
          onTap: () {
            Get.to(() => ContatosPages());
          },
          title: 'Contatos',
          icon: Icons.person_outline,
          larguraTela: larguraTela,
          alturaTela: alturaTela,
        ),
        ItemsMenuInferiorWidget(
          onTap: () {},
          title: 'Dados Cadastrais',
          icon: Icons.contact_page_rounded,
          larguraTela: larguraTela,
          alturaTela: alturaTela,
        ),
      ],
    );
  }
}
