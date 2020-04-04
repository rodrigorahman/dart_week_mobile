import 'package:dart_week_mobile/app/core/store_state.dart';
import 'package:dart_week_mobile/app/models/movimentacao_total_model.dart';
import 'package:dart_week_mobile/app/repositories/movimentacoes_repository.dart';
import 'package:dart_week_mobile/app/utils/store_utils.dart';
import 'package:mobx/mobx.dart';
import 'package:intl/intl.dart';

part 'painel_saldo_controller.g.dart';

class PainelSaldoController = _PainelSaldoControllerBase
    with _$PainelSaldoController;

abstract class _PainelSaldoControllerBase with Store {

  final MovimentacoesRepository movimentacoesRepository;
  _PainelSaldoControllerBase(this.movimentacoesRepository);


  @observable
  DateTime data = DateTime.now();


  @action
  nextMonth() {
    print('nextMonth');
    data = DateTime(data.year, data.month +1, 1);
  }
  @action
  previousMonth() {
    data = DateTime(data.year, data.month -1, 1);
  }

  @computed
  String get anoMes => DateFormat('yyyyMM').format(data);

  @observable
  String errorMessage;  

  @observable
  ObservableFuture<MovimentacaoTotalModel> _totalMovimentacao;

  @computed
  StoreState get totalsTate => StoreUtils.statusCheck(_totalMovimentacao);

  @observable
  MovimentacaoTotalModel movimentacaoTotalModel;

  @action
  buscarTotalDoMes() async {
    try{
      errorMessage = '';
      _totalMovimentacao = ObservableFuture(movimentacoesRepository.getTotalMes(anoMes));
      movimentacaoTotalModel = await _totalMovimentacao;
    }catch(e) {
      errorMessage = 'Erro ao buscar total de movimentacoes';
      print(e);
    }
  }

}
