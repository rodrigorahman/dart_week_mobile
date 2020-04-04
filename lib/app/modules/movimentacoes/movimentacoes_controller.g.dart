// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movimentacoes_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MovimentacoesController on _MovimentacoesControllerBase, Store {
  Computed<StoreState> _$movimentacoesStateComputed;

  @override
  StoreState get movimentacoesState => (_$movimentacoesStateComputed ??=
          Computed<StoreState>(() => super.movimentacoesState))
      .value;

  final _$errorMessageAtom =
      Atom(name: '_MovimentacoesControllerBase.errorMessage');

  @override
  String get errorMessage {
    _$errorMessageAtom.context.enforceReadPolicy(_$errorMessageAtom);
    _$errorMessageAtom.reportObserved();
    return super.errorMessage;
  }

  @override
  set errorMessage(String value) {
    _$errorMessageAtom.context.conditionallyRunInAction(() {
      super.errorMessage = value;
      _$errorMessageAtom.reportChanged();
    }, _$errorMessageAtom, name: '${_$errorMessageAtom.name}_set');
  }

  final _$_movimentacoesFutureAtom =
      Atom(name: '_MovimentacoesControllerBase._movimentacoesFuture');

  @override
  ObservableFuture<List<MovimentacaoModel>> get _movimentacoesFuture {
    _$_movimentacoesFutureAtom.context
        .enforceReadPolicy(_$_movimentacoesFutureAtom);
    _$_movimentacoesFutureAtom.reportObserved();
    return super._movimentacoesFuture;
  }

  @override
  set _movimentacoesFuture(ObservableFuture<List<MovimentacaoModel>> value) {
    _$_movimentacoesFutureAtom.context.conditionallyRunInAction(() {
      super._movimentacoesFuture = value;
      _$_movimentacoesFutureAtom.reportChanged();
    }, _$_movimentacoesFutureAtom,
        name: '${_$_movimentacoesFutureAtom.name}_set');
  }

  final _$movimentacoesAtom =
      Atom(name: '_MovimentacoesControllerBase.movimentacoes');

  @override
  ObservableList<MovimentacaoModel> get movimentacoes {
    _$movimentacoesAtom.context.enforceReadPolicy(_$movimentacoesAtom);
    _$movimentacoesAtom.reportObserved();
    return super.movimentacoes;
  }

  @override
  set movimentacoes(ObservableList<MovimentacaoModel> value) {
    _$movimentacoesAtom.context.conditionallyRunInAction(() {
      super.movimentacoes = value;
      _$movimentacoesAtom.reportChanged();
    }, _$movimentacoesAtom, name: '${_$movimentacoesAtom.name}_set');
  }

  final _$buscarMovimentacoesAsyncAction = AsyncAction('buscarMovimentacoes');

  @override
  Future<void> buscarMovimentacoes() {
    return _$buscarMovimentacoesAsyncAction
        .run(() => super.buscarMovimentacoes());
  }

  @override
  String toString() {
    final string =
        'errorMessage: ${errorMessage.toString()},movimentacoes: ${movimentacoes.toString()},movimentacoesState: ${movimentacoesState.toString()}';
    return '{$string}';
  }
}
