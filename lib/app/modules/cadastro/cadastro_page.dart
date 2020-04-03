import 'package:dart_week_mobile/app/components/controleja_button.dart';
import 'package:dart_week_mobile/app/components/controleja_text_form_field.dart';
import 'package:dart_week_mobile/app/utils/size_utils.dart';
import 'package:dart_week_mobile/app/utils/theme_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:get/get.dart';
import 'cadastro_controller.dart';

class CadastroPage extends StatefulWidget {
  final String title;
  const CadastroPage({Key key, this.title = "Cadastro"}) : super(key: key);

  @override
  _CadastroPageState createState() => _CadastroPageState();
}

class _CadastroPageState extends ModularState<CadastroPage, CadastroController> {
  //use 'controller' variable to access controller
  AppBar appBar = AppBar(
    elevation: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
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
      height: ((SizeUtils.heightScreen * .5) - (SizeUtils.statusBarHeight + appBar.preferredSize.height)),
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
            ControleJaTextFormField(label: 'Confirma Senha'),
            SizedBox(
              height: 30,
            ),
            ControleJaButton(
              label: 'Salvar',
              onPressed: () {},
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
