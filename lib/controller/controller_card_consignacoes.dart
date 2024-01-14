import 'package:app_teste_flutter/models/card_consignacao_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllerCardConsignacoes extends GetxController {
  final RxList<CardConsignacaoModel> listaConsignacoes =
      <CardConsignacaoModel>[].obs;

  final controllerServico = TextEditingController();
  final controllerNomeUsuario = TextEditingController();
  final controllerValorUsado = TextEditingController();
  final controllerValorEmprestimo = TextEditingController();

  void addConsignacao(String servico, String nomeUsuario,
      String valorDisponivel, String valorEmprestimo) {
    listaConsignacoes.add(
      CardConsignacaoModel(
        nomeServico: servico,
        nomeUsuario: nomeUsuario,
        valorDisponivel: valorDisponivel,
        valorEmprestimo: valorEmprestimo,
      ),
    );
    update();
  }
}
