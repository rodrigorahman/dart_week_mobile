import 'package:dart_week_mobile/app/core/store_state.dart';
import 'package:dart_week_mobile/app/models/categoria_model.dart';
import 'package:dart_week_mobile/app/repositories/categorias_repository.dart';
import 'package:dart_week_mobile/app/repositories/movimentacoes_repository.dart';
import 'package:dart_week_mobile/app/utils/store_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'cadastrar_movimentacao_controller.g.dart';

class CadastrarMovimentacaoController = _CadastrarMovimentacaoControllerBase with _$CadastrarMovimentacaoController;

abstract class _CadastrarMovimentacaoControllerBase with Store {
  final formKey = GlobalKey<FormState>();
  final moneyController = MoneyMaskedTextController(decimalSeparator: ',', thousandSeparator: '.');
  CategoriaRepository _categoriaRepository = Modular.get<CategoriaRepository>();
  MovimentacoesRepository _movimentacoesRepository = Modular.get<MovimentacoesRepository>();

  @observable
  DateTime dataInclusao = DateTime.now();

  @observable
  String errorMessage;
  @observable
  String tipoSelecionado;
  @observable
  List<CategoriaModel> categorias;
  @observable
  bool categoriaValid = true;
  @observable
  CategoriaModel categoria;
  @observable
  String descricao;
  @observable
  double valor;

  @action
  void changeCategoria(CategoriaModel categoriaModel) {
    categoria = categoriaModel;
  }

  @action
  void changeDescricao(String descricao) {
    this.descricao = descricao;
  }

  @action
  void changeValor(double valor) {
    this.valor = valor;
  }

  @action
  void setDataInclusao(DateTime data) {
    dataInclusao = data;
  }

  @observable
  ObservableFuture<List<CategoriaModel>> _categoriasFuture;

  @computed
  StoreState get categoriasStatus => StoreUtils.statusCheck(_categoriasFuture);

  @action
  Future<void> buscarCategorias(String tipo) async {
    try {
      tipoSelecionado = tipo;
      _categoriasFuture = ObservableFuture(_categoriaRepository.getCategorias(tipo));
      List<CategoriaModel> categoriasModel = await _categoriasFuture;
      this.categorias = categoriasModel;
    } catch (e) {
      errorMessage = 'Erro ao buscar categorias';
      print(e);
    }
  }

  @observable
  ObservableFuture _salvarMovimentacaoFuture;

  @computed
  StoreState get salvarMovimentacaoStatus => StoreUtils.statusCheck(_salvarMovimentacaoFuture);

  Future<void> salvarMovimento() async {
    try {
      if (formKey.currentState.validate()) {
        if (categoria == null) {
          categoriaValid = false;
        } else {
          _salvarMovimentacaoFuture = ObservableFuture(
            _movimentacoesRepository.salvarMovimentacao(
              categoria.id,
              dataInclusao,
              descricao,
              moneyController.numberValue,
            ),
          );
          await _salvarMovimentacaoFuture;
        }
      } else {
        if (categoria == null) {
          categoriaValid = false;
        }
      }
    } catch (e) {
      print(e);
    }
  }

  @action
  resetForm() {
    changeCategoria(null);
    changeDescricao('');
    moneyController.text = '';
    categoriaValid = true;
  }
}
