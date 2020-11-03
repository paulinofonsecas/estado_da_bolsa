import 'package:estado_da_bolsa/core/modulos/data/errors/erros.dart';
import 'package:estado_da_bolsa/core/modulos/data/implementacao_dos_repositorios/repositorio_de_bolseiro.dart';
import 'package:estado_da_bolsa/core/modulos/dominio/casos_de_usos/perquisar_bolseiro.dart';
import 'package:estado_da_bolsa/core/modulos/dominio/entidades/bolseiro.dart';
import 'package:estado_da_bolsa/core/modulos/dominio/repositorios/i_repositorio_de_bolseiro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TelaDeConsultaCubit extends Cubit<EstadoDaTela> {
  TextEditingController biTextController;
  IRepositorioDeBolseiro _repositorio;
  IPesquisadorDeBolseiro _pesquisador;
  Bolseiro _bolseiroCache;

  TelaDeConsultaCubit() : super(EstadoDaTela.inicial) {
    biTextController = TextEditingController();
    _repositorio = RepositorioDeBolseiro();
    _pesquisador = PesquisadorDeBolseiro(_repositorio);
  }

  String get bi => biTextController.text;

  Future<void> pesquisarBolseiro() async {
    emit(EstadoDaTela.buscando);
    await Future.delayed(Duration(seconds: 4));
    try {
      _bolseiroCache = await _pesquisador.pesquisar(bi);
      emit(EstadoDaTela.finalizado);
    } on BINaoEncontrado {
      emit(EstadoDaTela.erro);
    } on ErroNaConecao {
      emit(EstadoDaTela.erro);
    }
  }

  Bolseiro get bolsaStatus => _bolseiroCache;
}

enum EstadoDaTela { inicial, buscando, finalizado, erro }
