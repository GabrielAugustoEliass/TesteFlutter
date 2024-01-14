// ignore_for_file: prefer_const_constructors

import 'package:app_teste_flutter/views/consignacoes/pages/consignacoes_pages.dart';
import 'package:app_teste_flutter/views/contatos/pages/contatos_pages.dart';
import 'package:app_teste_flutter/views/inical_page/pages/inicial_page.dart';
import 'package:app_teste_flutter/views/login_page/pages/login_page.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Routes {
  static List<GetPage> routes = [
    GetPage(name: '/', page: () => LoginPage()),
    GetPage(name: '/inicialPage', page: () => InicialPage()),
    GetPage(name: '/contatos', page: () => ContatosPages()),
    GetPage(name: '/consignacoes', page: () => ConsignacoesPage()),
  ];
}
