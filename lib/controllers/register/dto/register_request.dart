import 'package:dart_week_api/dart_backend.dart';

class RegisterRequest extends Serializable {
  String nome;
  String apelido;
  String sobrenone;
  String senha;
  String numero;
  String email;

  @override
  Map<String, dynamic> asMap() {
    return {
      'nome': nome,
      'senha': senha,
      'apelido': apelido,
      'sobrenone': sobrenone,
      'numero': numero,
      'email': email,
    };
  }

  @override
  void readFromMap(Map<String, dynamic> object) {
    nome = object['nome'] as String;
    senha = object['senha'] as String;
    apelido = object['apelido'] as String;
    sobrenone = object['sobrenone'] as String;
    numero = object['numero'] as String;
    email = object['email'] as String;
  }

  Map<String, String> valitate() {
    final Map<String, String> valitateResult = {};
    if (nome == null || nome.isEmpty) {
      valitateResult['nome'] = 'nome obrigatorio';
    }
    if (senha == null || senha.isEmpty) {
      valitateResult['senha'] = 'senha obrigatoria';
    }
    if (apelido == null || apelido.isEmpty) {
      valitateResult['nome'] = 'apelido obrigatorio';
    }
    if (sobrenone == null || sobrenone.isEmpty) {
      valitateResult['senha'] = 'sobrenome obrigatoria';
    }
    if (email == null || email.isEmpty) {
      valitateResult['nome'] = 'email obrigatorio';
    }
    if (numero == null || numero.isEmpty) {
      valitateResult['senha'] = 'numero obrigatoria';
    }
    return valitateResult;
  }
}
