import 'package:dart_week_mobile/app/modules/home/home_controller.dart';
import 'package:dart_week_mobile/app/repositories/usuario_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dart_week_mobile/app/modules/home/home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController(i.get<UsuarioRepository>())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
