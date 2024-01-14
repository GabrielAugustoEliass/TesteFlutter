// ignore_for_file: prefer_const_constructors

import 'package:app_teste_flutter/controller/controller_contatos.dart';
import 'package:app_teste_flutter/shared/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListaContatos extends StatelessWidget {
  ListaContatos({super.key});

  final controllerContatos = Get.find<ControllerContatos>();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Obx(
        () => controllerContatos.listContatos.isEmpty
            ? Center(
                child: Text('Nenhum Contato Adicionado'),
              )
            : ListView.builder(
                itemCount: controllerContatos.listContatos.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    trailing: Icon(
                      Icons.delete,
                      color: ColorsApp.corAzulApp,
                    ),
                    title: Text(controllerContatos.listContatos[index].name),
                    subtitle:
                        Text(controllerContatos.listContatos[index].telefone),
                  );
                },
              ),
      ),
    );
  }
}
