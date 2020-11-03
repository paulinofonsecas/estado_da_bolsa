import 'package:estado_da_bolsa/app/pages/detalhes_da_bolsa/detales_da_bolsa.dart';
import 'package:estado_da_bolsa/core/modulos/data/errors/erros.dart';
import 'package:estado_da_bolsa/core/modulos/data/implementacao_dos_repositorios/repositorio_de_bolseiro.dart';
import 'package:estado_da_bolsa/core/modulos/dominio/casos_de_usos/perquisar_bolseiro.dart';
import 'package:estado_da_bolsa/core/modulos/dominio/entidades/bolseiro.dart';
import 'package:estado_da_bolsa/core/modulos/dominio/repositorios/i_repositorio_de_bolseiro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<EstadoDaTela> {
  TextEditingController biTextController;
  IRepositorioDeBolseiro _repositorio;
  IPesquisadorDeBolseiro _pesquisador;
  BuildContext context;
  Bolseiro _bolseiroCache;

  HomeCubit(this.context) : super(EstadoDaTela.inicial) {
    biTextController = TextEditingController();
    _repositorio = RepositorioDeBolseiro();
    _pesquisador = PesquisadorDeBolseiro(_repositorio);
  }

  String get bi => biTextController.text;

  irParaTelaDeDetalhes() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return MostrarDetalhesDaBolsa(bolsa: _bolseiroCache);
        },
      ),
    );
  }

  Future<void> pesquisarBolseiro() async {
    emit(EstadoDaTela.buscando);
    await Future.delayed(Duration(seconds: 4));
    try {
      _bolseiroCache = await _pesquisador.pesquisar(bi);
      if (_bolseiroCache != null) {
        biTextController.clear();
        irParaTelaDeDetalhes();
      } else {
        emit(EstadoDaTela.erro);
      }
    } on BINaoEncontrado {
      emit(EstadoDaTela.erro);
    } on ErroNaConecao {
      emit(EstadoDaTela.erro);
    }
  }

  Bolseiro get bolsaStatus => _bolseiroCache;
}

enum EstadoDaTela { inicial, buscando, finalizado, erro }
