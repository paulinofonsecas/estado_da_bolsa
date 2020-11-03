import 'package:estado_da_bolsa/app/cubits/tela_de_consulta.dart';
import 'package:estado_da_bolsa/app/pages/tela_de_consulta/componenetes/seccao.dart';
import 'package:estado_da_bolsa/app/pages/tela_de_consulta/componenetes/tiled_info.dart';
import 'package:estado_da_bolsa/app/pages/tela_de_consulta/tela_de_consulta.dart';
import 'package:estado_da_bolsa/core/modulos/dominio/entidades/bolseiro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'componentes/custom_app_bar.dart';

class MostrarDetalhesDaBolsa extends StatefulWidget {
  const MostrarDetalhesDaBolsa({
    Key key,
    @required this.bolsa,
  }) : super(key: key);

  final Bolseiro bolsa;

  @override
  _MostrarDetalhesDaBolsaState createState() => _MostrarDetalhesDaBolsaState();
}

class _MostrarDetalhesDaBolsaState extends State<MostrarDetalhesDaBolsa> {
  sair() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) {
          return BlocProvider(
            create: (_) => HomeCubit(_),
            child: Home(),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: WillPopScope(
        onWillPop: () async {},
        child: Scaffold(
          backgroundColor: Colors.white,
          body: buildBody(context),
        ),
      ),
    );
  }

  SingleChildScrollView buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            child: Column(
              children: [
                CustomAppBar(
                    title: 'Estado da bolsa', corpo: widget.bolsa.estado),
                SizedBox(height: 20),
                Seccao(
                  titlo: 'Dados Pessoais',
                  infos: [
                    TiledInfo(titlo: 'Nome', desc: widget.bolsa.nome),
                    TiledInfo(titlo: 'Nº do BI', desc: widget.bolsa.bi),
                    TiledInfo(
                        titlo: 'Data de Nascimento',
                        desc: widget.bolsa.dataNascimento),
                    TiledInfo(titlo: 'Sexo', desc: widget.bolsa.sexo),
                    TiledInfo(
                        titlo: 'Naturalidade',
                        desc: widget.bolsa.provinciaNascimento),
                    TiledInfo(
                        titlo: 'Residência',
                        desc: widget.bolsa.provinciaResidencia),
                    TiledInfo(
                        titlo: 'Numero da conta bancaria',
                        desc: widget.bolsa.numeroConta),
                  ],
                ),
                Seccao(
                  titlo: 'Dados da Bolsa',
                  infos: [
                    TiledInfo(
                        titlo: 'Tipo de bolsa', desc: widget.bolsa.tipoBolsa),
                    TiledInfo(
                        titlo: 'Data de Inicio da Bolsa',
                        desc: widget.bolsa.dataInicio),
                    TiledInfo(
                        titlo: 'Data de Fim da bolsa',
                        desc: widget.bolsa.dataFim),
                    TiledInfo(
                        titlo: 'Unidade Organica',
                        desc: widget.bolsa.unidadeOrganica),
                    TiledInfo(titlo: 'Curso', desc: widget.bolsa.curso),
                    TiledInfo(
                        titlo: 'Duração do Curso',
                        desc: '${widget.bolsa.duracao} Anos'),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: GestureDetector(
              onTap: sair,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Text(
                    'Fechar',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
