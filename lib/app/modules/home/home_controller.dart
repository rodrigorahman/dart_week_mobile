import 'package:dart_week_mobile/app/mixins/loader_mixin.dart';
import 'package:dart_week_mobile/app/repositories/usuario_repository.dart';
import 'package:get/get.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store, LoaderMixin {
  final UsuarioRepository _usuarioRepository;

  _HomeControllerBase(this._usuarioRepository);

  Future<void> verificaLogado() async {
    showLoader();
    if (await _usuarioRepository.isLogged()) {
      hideLoader();
      Get.offAllNamed('/movimentacoes');
    } else {
      hideLoader();
      Get.offAllNamed('/login');
    }
  }
}
