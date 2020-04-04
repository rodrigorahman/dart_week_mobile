import 'dart:convert';

class CadastroUsuarioModel {
  
  String login;
  String senha;
  
  CadastroUsuarioModel({
    this.login,
    this.senha,
  });

  Map<String, dynamic> toMap() {
    return {
      'login': login,
      'senha': senha,
    };
  }

  static CadastroUsuarioModel fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return CadastroUsuarioModel(
      login: map['login'],
      senha: map['senha'],
    );
  }

  String toJson() => json.encode(toMap());

  static CadastroUsuarioModel fromJson(String source) => fromMap(json.decode(source));
}
