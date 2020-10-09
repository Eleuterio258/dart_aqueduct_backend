import 'package:dart_week_api/controllers/login/login_controller.dart';
import 'package:dart_week_api/dart_backend.dart';
import 'package:dart_week_api/routers/usuario_router.dart';
import 'models/usuario_model.dart';
import 'models/categoria_model.dart';
import 'models/movimentacao_model.dart';
import 'config/db/dabase_configuration.dart';

class DartWeekApiChannel extends ApplicationChannel {
  ManagedContext context;
  @override
  Future prepare() async {
    logger.onRecord.listen(
        (rec) => print("$rec ${rec.error ?? ""} ${rec.stackTrace ?? ""}"));
    final dataModel = ManagedDataModel.fromCurrentMirrorSystem();
    final config = DabaseConfiguration(options.configurationFilePath);
    final database = PostgreSQLPersistentStore.fromConnectionInfo(
      config.database.username,
      config.database.password,
      config.database.host,
      config.database.port,
      config.database.databaseName,
    );
    context = ManagedContext(dataModel, database);
  }

  @override
  Controller get entryPoint {
    final router = Router();
    UsuarioRouter.configurar(router, context);
    return router;
  }
}
