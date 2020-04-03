import 'package:mobx/mobx.dart';

part 'movimentacoes_controller.g.dart';

class MovimentacoesController = _MovimentacoesControllerBase
    with _$MovimentacoesController;

abstract class _MovimentacoesControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
