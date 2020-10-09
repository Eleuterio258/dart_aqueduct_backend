import 'package:dart_week_api/dart_backend.dart';

class LoginRequest extends Serializable {
  String nome;
  String senha;

  @override
  Map<String, dynamic> asMap() {
    return {'nome': nome, 'senha': senha};
  }

  @override
  void readFromMap(Map<String, dynamic> object) {
    nome = object['nome'] as String;
    senha = object['senha'] as String;
  }

  Map<String, String> valitate() {
    final Map<String, String> valitateResult = {};
    if (nome == null || nome.isEmpty) {
      valitateResult['nome'] = 'nome obrigatorio';
    }
    if (senha == null || senha.isEmpty) {
      valitateResult['senha'] = 'senha obrigatoria';
    }
    return valitateResult;
  }
}
