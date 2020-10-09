import 'package:dart_week_api/models/categoria_model.dart';
import 'package:dart_week_api/models/usuario_model.dart';

import '../dart_backend.dart';

class MovimentacaoModel extends ManagedObject<_MovimentacaoModel>
    implements _MovimentacaoModel {}

@Table(name: 'movimentaca')
class _MovimentacaoModel {
  @Column(primaryKey: true, autoincrement: true)
  int id;


  @Column()
  DateTime dataMovimentacao;

  @Relate(#dataMovimentacoes)
  UsuarioModel usuario;

  @Relate(#dataMovimentacoes)
  CategoriaModel categoria;
}
