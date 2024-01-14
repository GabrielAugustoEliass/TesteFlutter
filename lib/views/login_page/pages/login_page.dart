// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:app_teste_flutter/shared/constants/colors.dart';
import 'package:app_teste_flutter/views/login_page/widgets/bottom_login_widget.dart';
import 'package:app_teste_flutter/views/login_page/widgets/image_login_widget.dart';
import 'package:app_teste_flutter/views/login_page/widgets/login_text_field_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final larguraTela = MediaQuery.of(context).size.width;
    final alturaTela = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Container(
            width: larguraTela,
            height: alturaTela * 0.955,
            child: Padding(
              padding: EdgeInsets.only(
                top: alturaTela * 0.004,
                right: larguraTela * 0.04,
                left: larguraTela * 0.04,
              ),
              child: Stack(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.grid_view_sharp,
                        color: ColorsApp.corAzulApp,
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: ImageLoginWidget(
                      larguraTela: larguraTela,
                      alturaTela: alturaTela,
                    ),
                  ),
                  SizedBox(
                    height: larguraTela * 0.08,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LoginTextFieldWidget(
                        icon: Icons.person_outline,
                        title: 'Usuário',
                      ),
                      SizedBox(
                        height: larguraTela * 0.055,
                      ),
                      LoginTextFieldWidget(
                        icon: Icons.lock_outline,
                        title: 'Senha',
                      ),
                      SizedBox(
                        height: larguraTela * 0.035,
                      ),
                      Text(
                        'Esqueci minha senha',
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(
                        height: larguraTela * 0.09,
                      ),
                      BottomLoginWidget(
                        larguraTela: larguraTela,
                        alturaTela: alturaTela,
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image.asset(
                              'images/primeiroAcesso.jpg',
                              width: larguraTela * 0.17,
                              height: alturaTela * 0.035,
                            ),
                            SizedBox(height: alturaTela * 0.015),
                            Text('Primeiro Acesso'),
                          ],
                        ),
                        SizedBox(
                          width: larguraTela * 0.08,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image.asset(
                              'images/ChatSuporte.jpg',
                              width: larguraTela * 0.2,
                              height: alturaTela * 0.04,
                            ),
                            SizedBox(height: alturaTela * 0.015),
                            Text('Chat de Suporte', style: TextStyle()),
                          ],
                        ),
                      ],
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
