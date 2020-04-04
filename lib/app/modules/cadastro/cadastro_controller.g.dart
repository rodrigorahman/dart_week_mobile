// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cadastro_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CadastroController on _CadastroControllerBase, Store {
  Computed<StoreState> _$stateComputed;

  @override
  StoreState get state =>
      (_$stateComputed ??= Computed<StoreState>(() => super.state)).value;

  final _$loginAtom = Atom(name: '_CadastroControllerBase.login');

  @override
  String get login {
    _$loginAtom.context.enforceReadPolicy(_$loginAtom);
    _$loginAtom.reportObserved();
    return super.login;
  }

  @override
  set login(String value) {
    _$loginAtom.context.conditionallyRunInAction(() {
      super.login = value;
      _$loginAtom.reportChanged();
    }, _$loginAtom, name: '${_$loginAtom.name}_set');
  }

  final _$senhaAtom = Atom(name: '_CadastroControllerBase.senha');

  @override
  String get senha {
    _$senhaAtom.context.enforceReadPolicy(_$senhaAtom);
    _$senhaAtom.reportObserved();
    return super.senha;
  }

  @override
  set senha(String value) {
    _$senhaAtom.context.conditionallyRunInAction(() {
      super.senha = value;
      _$senhaAtom.reportChanged();
    }, _$senhaAtom, name: '${_$senhaAtom.name}_set');
  }

  final _$confirmaSenhaAtom =
      Atom(name: '_CadastroControllerBase.confirmaSenha');

  @override
  String get confirmaSenha {
    _$confirmaSenhaAtom.context.enforceReadPolicy(_$confirmaSenhaAtom);
    _$confirmaSenhaAtom.reportObserved();
    return super.confirmaSenha;
  }

  @override
  set confirmaSenha(String value) {
    _$confirmaSenhaAtom.context.conditionallyRunInAction(() {
      super.confirmaSenha = value;
      _$confirmaSenhaAtom.reportChanged();
    }, _$confirmaSenhaAtom, name: '${_$confirmaSenhaAtom.name}_set');
  }

  final _$_cadastraLoginFutureAtom =
      Atom(name: '_CadastroControllerBase._cadastraLoginFuture');

  @override
  ObservableFuture<dynamic> get _cadastraLoginFuture {
    _$_cadastraLoginFutureAtom.context
        .enforceReadPolicy(_$_cadastraLoginFutureAtom);
    _$_cadastraLoginFutureAtom.reportObserved();
    return super._cadastraLoginFuture;
  }

  @override
  set _cadastraLoginFuture(ObservableFuture<dynamic> value) {
    _$_cadastraLoginFutureAtom.context.conditionallyRunInAction(() {
      super._cadastraLoginFuture = value;
      _$_cadastraLoginFutureAtom.reportChanged();
    }, _$_cadastraLoginFutureAtom,
        name: '${_$_cadastraLoginFutureAtom.name}_set');
  }

  final _$errorMessageAtom = Atom(name: '_CadastroControllerBase.errorMessage');

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

  final _$_CadastroControllerBaseActionController =
      ActionController(name: '_CadastroControllerBase');

  @override
  dynamic changeLogin(String loginValue) {
    final _$actionInfo =
        _$_CadastroControllerBaseActionController.startAction();
    try {
      return super.changeLogin(loginValue);
    } finally {
      _$_CadastroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeSenha(String senhaValue) {
    final _$actionInfo =
        _$_CadastroControllerBaseActionController.startAction();
    try {
      return super.changeSenha(senhaValue);
    } finally {
      _$_CadastroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeConfirmaSenha(String confirmaSenhaValue) {
    final _$actionInfo =
        _$_CadastroControllerBaseActionController.startAction();
    try {
      return super.changeConfirmaSenha(confirmaSenhaValue);
    } finally {
      _$_CadastroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'login: ${login.toString()},senha: ${senha.toString()},confirmaSenha: ${confirmaSenha.toString()},errorMessage: ${errorMessage.toString()},state: ${state.toString()}';
    return '{$string}';
  }
}
