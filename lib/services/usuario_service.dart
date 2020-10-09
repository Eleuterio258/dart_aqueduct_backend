import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:dart_week_api/controllers/login/dto/login_request.dart';
import 'package:dart_week_api/dart_backend.dart';
import 'package:dart_week_api/repository/usuario_repository.dart';
import 'package:dart_week_api/utils/jwt_utils.dart';

class UsuarioService {
  UsuarioService(this.context) : usuarioRepository = UsuarioRepository(context);
  final ManagedContext context;
  final UsuarioRepository usuarioRepository;

  Future<String> login(LoginRequest request) async {
    final String nome = request.nome;
    final String senha = request.senha;
    final senhaByte = utf8.encode(senha);
    final String senhaCrype = sha256.convert(senhaByte).toString();
    //print(senhaCrype);
    final usuario = await usuarioRepository.recurarLogin(nome, senhaCrype);
    if (usuario != null) {
      return JwtUtils.gerarTokenJWT(usuario);
    }
    return null;
  }
}
