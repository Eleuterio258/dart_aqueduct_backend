import 'package:dart_week_api/controllers/login/login_controller.dart';
import 'package:dart_week_api/dart_backend.dart';

class UsuarioRouter {
  static void configurar(Router router, ManagedContext context) {
    router.route('/login').link(() => LoginController(context));
  }
}
