import 'package:estado_da_bolsa/core/modulos/dominio/entidades/bolseiro.dart';

class BolseiroModel extends Bolseiro{
  int id;
  String nome;
  String sexo;
  String bi;
  String dataNascimento;
  String numeroConta;
  String provinciaNascimento;
  String provinciaResidencia;
  String provinciaUnidadeOrganica;
  String tipoBolsa;
  String periodoAvaliacao;
  String dataInicio;
  String dataFim;
  String ies;
  String unidadeOrganica;
  String curso;
  String duracao;
  String anoFrequencia;
  String estado;

  BolseiroModel(
      {this.id,
      this.nome,
      this.sexo,
      this.bi,
      this.dataNascimento,
      this.numeroConta,
      this.provinciaNascimento,
      this.provinciaResidencia,
      this.provinciaUnidadeOrganica,
      this.tipoBolsa,
      this.periodoAvaliacao,
      this.dataInicio,
      this.dataFim,
      this.ies,
      this.unidadeOrganica,
      this.curso,
      this.duracao,
      this.anoFrequencia,
      this.estado});

  BolseiroModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    sexo = json['sexo'];
    bi = json['bi'];
    dataNascimento = json['data_nascimento'];
    numeroConta = json['numero_conta'];
    provinciaNascimento = json['provincia_nascimento'];
    provinciaResidencia = json['provincia_residencia'];
    provinciaUnidadeOrganica = json['provincia_unidade_organica'];
    tipoBolsa = json['tipo_bolsa'];
    periodoAvaliacao = json['periodo_avaliacao'];
    dataInicio = json['data_inicio'];
    dataFim = json['data_fim'];
    ies = json['ies'];
    unidadeOrganica = json['unidade_organica'];
    curso = json['curso'];
    duracao = json['duracao'];
    anoFrequencia = json['ano_frequencia'];
    estado = json['estado'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['sexo'] = this.sexo;
    data['bi'] = this.bi;
    data['data_nascimento'] = this.dataNascimento;
    data['numero_conta'] = this.numeroConta;
    data['provincia_nascimento'] = this.provinciaNascimento;
    data['provincia_residencia'] = this.provinciaResidencia;
    data['provincia_unidade_organica'] = this.provinciaUnidadeOrganica;
    data['tipo_bolsa'] = this.tipoBolsa;
    data['periodo_avaliacao'] = this.periodoAvaliacao;
    data['data_inicio'] = this.dataInicio;
    data['data_fim'] = this.dataFim;
    data['ies'] = this.ies;
    data['unidade_organica'] = this.unidadeOrganica;
    data['curso'] = this.curso;
    data['duracao'] = this.duracao;
    data['ano_frequencia'] = this.anoFrequencia;
    data['estado'] = this.estado;
    return data;
  }
}
