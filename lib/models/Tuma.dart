
import 'package:dart_week_api/models/categoria_model.dart';


import '../dart_backend.dart';

class AlunoModel extends ManagedObject<_MovimentacaoModel>
    implements _AlunoModel {}

@Table(name: 'aluno')
class _AlunoModel {
  @Column(primaryKey: true, autoincrement: true)
  int id;
  
  @Column()
  String nome;
  
  @Column()
  int idade;
  
  @Column()
  String turma;


  @Column()
  DateTime dataRegitro;
  
}
