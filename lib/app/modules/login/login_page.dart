import 'package:dart_week_mobile/app/components/controleja_button.dart';
import 'package:dart_week_mobile/app/components/controleja_text_form_field.dart';
import 'package:dart_week_mobile/app/utils/size_utils.dart';
import 'package:dart_week_mobile/app/utils/theme_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:get/get.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          _makeHeader(),
          SizedBox(
            height: 30,
          ),
          _makeForm()
        ],
      ),
    );
  }

  Widget _makeHeader() {
    return Container(
      color: ThemeUtils.primaryColor,
      width: SizeUtils.widthScreen,
      height: (SizeUtils.heightScreen * .5) - SizeUtils.statusBarHeight,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            bottom: 50,
            child: Image.asset('assets/images/logo.png'),
          )
        ],
      ),
    );
  }

  Form _makeForm() {
    return Form(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: <Widget>[
            ControleJaTextFormField(label: 'Login'),
            SizedBox(
              height: 30,
            ),
            ControleJaTextFormField(label: 'Senha'),
            SizedBox(
              height: 30,
            ),
            ControleJaButton(
              label: 'Entrar',
              onPressed: () => Get.toNamed('/movimentacoes'),
            ),
            SizedBox(
              height: 30,
            ),
            FlatButton(
              onPressed: () => Get.toNamed('/login/cadastro'),
              child: Text(
                'Cadastre-se',
                style: TextStyle(
                  color: ThemeUtils.primaryColor,
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
