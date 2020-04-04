import 'package:dart_week_mobile/app/repositories/usuario_repository.dart';
import 'package:dart_week_mobile/app/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:get/get.dart';
import 'home_controller.dart';
import 'package:dart_week_mobile/app/utils/theme_utils.dart';
class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {

    ThemeUtils.init(context);
    SizeUtils.init(context);

    Future.delayed(Duration.zero, () async {
      if(await Modular.get<UsuarioRepository>().isLogged()){
        Get.offAllNamed('/movimentacoes');
      }else{
        Get.offAllNamed('/login');
      }
    } );

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
