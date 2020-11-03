import 'package:estado_da_bolsa/app/cubits/tela_de_consulta.dart';
import 'package:estado_da_bolsa/app/pages/detalhes_da_bolsa/detales_da_bolsa.dart';
import 'package:estado_da_bolsa/app/pages/tela_de_consulta/componenetes/seccao.dart';
import 'package:estado_da_bolsa/app/pages/tela_de_consulta/componenetes/tiled_info.dart';
import 'package:estado_da_bolsa/app/pages/tela_de_login/tela_de_loading.dart';
import 'package:estado_da_bolsa/app/pages/tela_de_pesquisa/tela_de_pesquisa.dart';
import 'package:estado_da_bolsa/core/modulos/dominio/entidades/bolseiro.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var controller = BlocProvider.of<HomeCubit>(context);

    return BlocBuilder<HomeCubit, EstadoDaTela>(
      builder: (context, state) {
        switch (state) {
          case EstadoDaTela.inicial:
            return TelaDePesquisa(cubit: controller);
            break;
          case EstadoDaTela.buscando:
            return TelaDeLoading();
            break;
          case EstadoDaTela.finalizado:
            return MostrarDetalhesDaBolsa(
              bolsa: controller.bolsaStatus,
            );
            break;
          default:
            return Container();
        }
      },
    );
  }
}
