import 'package:estado_da_bolsa/core/modulos/dominio/entidades/bolseiro.dart';

abstract class IRepositorioDeBolseiro {
  Future<Bolseiro> buscar(String bi);
}
