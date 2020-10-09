import 'package:dart_week_api/models/usuario_model.dart';
import 'package:jaguar_jwt/jaguar_jwt.dart';

class JwtUtils {
  static const String _jwtChavePrivada =
      'MIICWwIBAAKBgHzjhrt5yh7pFZwrzKOxb2GAkSRrz4tum1417GZja6qd4NFKyf2j';
  static String gerarTokenJWT(UsuarioModel usuario) {
    final claimSet = JwtClaim(
      issuer: 'localhost',
      subject: usuario.id.toString(),
      otherClaims: <String, dynamic>{},
      maxAge: const Duration(days: 1),
    );
    final token = 'Bearer ${issueJwtHS256(claimSet, _jwtChavePrivada)}';
    return token;
  }
}
