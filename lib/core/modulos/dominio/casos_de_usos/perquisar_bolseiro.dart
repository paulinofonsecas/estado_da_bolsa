import 'package:estado_da_bolsa/core/modulos/dominio/entidades/bolseiro.dart';
import 'package:estado_da_bolsa/core/modulos/dominio/repositorios/i_repositorio_de_bolseiro.dart';

abstract class IPesquisadorDeBolseiro {
  Future<Bolseiro> pesquisar(String bi);
}

class PesquisadorDeBolseiro implements IPesquisadorDeBolseiro {
  IRepositorioDeBolseiro _repositorioDeBolseiro;

  PesquisadorDeBolseiro(this._repositorioDeBolseiro);

  @override
  Future<Bolseiro> pesquisar(String bi) {
    try {
      return _repositorioDeBolseiro.buscar(bi);
    } catch (e) {
      rethrow;
    }
  }
}
