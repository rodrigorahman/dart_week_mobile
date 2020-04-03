import 'package:mobx/mobx.dart';

part 'painel_saldo_controller.g.dart';

class PainelSaldoController = _PainelSaldoControllerBase
    with _$PainelSaldoController;

abstract class _PainelSaldoControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
