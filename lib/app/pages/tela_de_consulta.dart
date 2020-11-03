import 'package:estado_da_bolsa/app/cubits/tela_de_consulta.dart';
import 'package:estado_da_bolsa/app/pages/tela_de_consulta/componenetes/seccao.dart';
import 'package:estado_da_bolsa/app/pages/tela_de_consulta/componenetes/tiled_info.dart';
import 'package:estado_da_bolsa/app/pages/telas/tela_de_loading.dart';
import 'package:estado_da_bolsa/app/pages/telas/tela_de_pesquisa.dart';
import 'package:estado_da_bolsa/core/modulos/dominio/entidades/bolseiro.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'detales_da_bolsa.dart';

class TelaDeConsulta extends StatefulWidget {
  @override
  _TelaDeConsultaState createState() => _TelaDeConsultaState();
}

class _TelaDeConsultaState extends State<TelaDeConsulta> {
  @override
  Widget build(BuildContext context) {
    var controller = BlocProvider.of<TelaDeConsultaCubit>(context);

    return BlocBuilder<TelaDeConsultaCubit, EstadoDaTela>(
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
