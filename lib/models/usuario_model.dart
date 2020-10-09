import 'package:dart_week_api/models/movimentacao_model.dart';

import '../dart_backend.dart';

class UsuarioModel extends ManagedObject<_UsuarioModel>
    implements _UsuarioModel {}

@Table(name: 'usuario')
class _UsuarioModel {
  @Column(primaryKey: true, autoincrement: true)
  int id;

  @Column(unique: true)
  String nome;

  @Column(unique: true)
  String sobrenome;

  @Column(unique: true)
  String apelido;

  @Column(unique: true)
  String senha;

  @Column()
  String numero;

  @Column(unique: true)
  String email;

  ManagedSet<MovimentacaoModel> dataMovimentacoes;
}
