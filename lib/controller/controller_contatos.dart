import 'package:app_teste_flutter/models/contatos_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllerContatos extends GetxController {
  final RxList<ContatosModel> listContatos = <ContatosModel>[].obs;

  final TextEditingController controllerTelefone = TextEditingController();
  final TextEditingController controllerName = TextEditingController();

  void addContato(String telefone, String name) {
    listContatos.add(ContatosModel(telefone: telefone, name: name));
    update();
  }
}
