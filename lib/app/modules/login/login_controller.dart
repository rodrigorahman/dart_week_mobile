import 'package:dart_week_mobile/app/core/store_state.dart';
import 'package:dart_week_mobile/app/repositories/usuario_repository.dart';
import 'package:dart_week_mobile/app/utils/store_utils.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {

  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  final UsuarioRepository usuarioRepository;
  
  _LoginControllerBase(this.usuarioRepository);  

  @observable
  String login;

  @observable
  String senha;


  @action
  changeLogin(String loginValue) => login = loginValue;
  
  @action
  changeSenha(String senhaValue) => senha = senhaValue;

  @observable
  ObservableFuture<bool> _loginFuture;

  @computed
  StoreState get state => StoreUtils.statusCheck(_loginFuture);
  
  @observable
  String errorMessage;

  @observable
  bool loginSuccess;

  @action
  Future<void> requestLogin() async {
    if(globalKey.currentState.validate()) {
      try{
        errorMessage = '';
        loginSuccess = null;
        _loginFuture = ObservableFuture(usuarioRepository.login(login, senha));
        loginSuccess = await _loginFuture;
      }catch(e) {
        print(e);
        errorMessage = 'Erro ao realziar Login';
      }
    }
  }

}
