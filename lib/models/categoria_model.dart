import '../dart_backend.dart';
import 'movimentacao_model.dart';

class CategoriaModel extends ManagedObject<_CategoriaModel>
    implements _CategoriaModel {}

enum Tipocategoria { receita, dispesa }
@Table(name: 'categoria')
class _CategoriaModel {
  @Column(primaryKey: true, autoincrement: true)
  int id;

  @Column(unique: true)
  String nome;

  @Column()
  Tipocategoria tipocategoria;
   ManagedSet<MovimentacaoModel> dataMovimentacoes;
}
