import 'package:dart_week_mobile/app/core/custom_dio.dart';
import 'package:dart_week_mobile/app/models/movimentacao_model.dart';
import 'package:dart_week_mobile/app/models/movimentacao_total_model.dart';

class MovimentacoesRepository {
  Future<List<MovimentacaoModel>> getMovimentacoes(String anoMes) {
    var dio = CustomDio.withAuthentication().instance;
    return dio.get('/movimentacoes/$anoMes').then((res) => res.data.map<MovimentacaoModel>((m) => MovimentacaoModel.fromMap(m)).toList());
  }

  Future<MovimentacaoTotalModel> getTotalMes(String anoMes) {
    var dio = CustomDio.withAuthentication().instance;
    return dio.get('/movimentacoes/total/$anoMes').then((res) => MovimentacaoTotalModel.fromMap(res.data));
  }

  Future<void> salvarMovimentacao(
    int categoria,
    DateTime dataMovimentacao,
    String descricao,
    double valor,
  ) {
    var dio = CustomDio.withAuthentication().instance;
    return dio.post('/movimentacoes', data: {
      	'categoria': categoria,
        'dataMovimentacao': dataMovimentacao.toIso8601String(),
        'descricao': descricao,
        'valor': valor
    });
  }
}
