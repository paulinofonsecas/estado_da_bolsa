import 'package:estado_da_bolsa/core/modulos/data/implementacao_dos_repositorios/repositorio_de_bolseiro.dart';
import 'package:estado_da_bolsa/core/modulos/dominio/repositorios/i_repositorio_de_bolseiro.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  IRepositorioDeBolseiro _repositorio;
  setUp(() {
    _repositorio = RepositorioDeBolseiro();
  });
  test('Requisicao do bolseiro', () async {
    var bi = '005181092BsE045';
    var result = await _repositorio.buscar(bi);
    expect(result.nome, 'Paulino Chaiaia Cassinda Da Fonseca');
    expect(result.bi, bi);
  });
}
