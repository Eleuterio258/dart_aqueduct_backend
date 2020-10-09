import 'package:dart_week_api/dart_backend.dart';
import 'package:dart_week_api/models/usuario_model.dart';

class UsuarioRepository {
  final ManagedContext context;

  UsuarioRepository(this.context);
  Future<UsuarioModel> recurarLogin(String nome, String senha) async {
    final query = Query<UsuarioModel>(context)
      ..where((usuario) => usuario.nome).equalTo(nome)
      ..where((senha) => senha.senha).equalTo(senha);

    return query.fetchOne();
  }
}
