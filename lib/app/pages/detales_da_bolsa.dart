import 'package:estado_da_bolsa/app/pages/tela_de_consulta/componenetes/seccao.dart';
import 'package:estado_da_bolsa/app/pages/tela_de_consulta/componenetes/tiled_info.dart';
import 'package:estado_da_bolsa/core/modulos/dominio/entidades/bolseiro.dart';
import 'package:flutter/material.dart';

class MostrarDetalhesDaBolsa extends StatelessWidget {
  const MostrarDetalhesDaBolsa({
    Key key,
    @required this.bolsa,
  }) : super(key: key);

  final Bolseiro bolsa;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Seccao(
                titlo: 'Dados Pessoais',
                infos: [
                  TiledInfo(titlo: 'Nome', desc: bolsa.nome),
                  TiledInfo(titlo: 'Nº do BI', desc: bolsa.bi),
                  TiledInfo(
                      titlo: 'Data de Nascimento', desc: bolsa.dataNascimento),
                  TiledInfo(titlo: 'Sexo', desc: bolsa.sexo),
                  TiledInfo(
                      titlo: 'Naturalidade', desc: bolsa.provinciaNascimento),
                  TiledInfo(
                      titlo: 'Residência', desc: bolsa.provinciaResidencia),
                  TiledInfo(
                      titlo: 'Numero da conta bancaria',
                      desc: bolsa.numeroConta),
                ],
              ),
              Seccao(
                titlo: 'Dados da Bolsa',
                infos: [
                  TiledInfo(titlo: 'Tipo de bolsa', desc: bolsa.tipoBolsa),
                  TiledInfo(
                      titlo: 'Data de Inicio da Bolsa', desc: bolsa.dataInicio),
                  TiledInfo(titlo: 'Data de Fim da bolsa', desc: bolsa.dataFim),
                  TiledInfo(
                      titlo: 'Unidade Organica', desc: bolsa.unidadeOrganica),
                  TiledInfo(titlo: 'Curso', desc: bolsa.curso),
                  TiledInfo(titlo: 'Duração do Curso', desc: bolsa.duracao),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
