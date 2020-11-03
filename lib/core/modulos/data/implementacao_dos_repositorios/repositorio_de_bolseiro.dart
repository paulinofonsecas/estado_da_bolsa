import 'package:dio/dio.dart';
import 'package:estado_da_bolsa/core/modulos/data/errors/erros.dart';
import 'package:estado_da_bolsa/core/modulos/data/models/bolseiro_model.dart';
import 'package:estado_da_bolsa/core/modulos/dominio/entidades/bolseiro.dart';
import 'package:estado_da_bolsa/core/modulos/dominio/repositorios/i_repositorio_de_bolseiro.dart';

class RepositorioDeBolseiro implements IRepositorioDeBolseiro {
  @override
  Future<Bolseiro> buscar(String bi) async {
    var urlBase = 'http://inagbeangola.com:3004/api/v1/consultarenovacao/';
    var dio = Dio(BaseOptions(baseUrl: urlBase));

    try {
      var response = await dio.get('$bi');
      var dadosEmJson = response.data;
      Bolseiro bolseiro = BolseiroModel.fromJson(dadosEmJson['data']);
      return bolseiro;
    } catch (e) {
      if (e == DioErrorType.RESPONSE) {
        throw BINaoEncontrado();
      }
      if (e == DioErrorType.CONNECT_TIMEOUT) {
        throw ErroNaConecao();
      }
    }
  }
}
