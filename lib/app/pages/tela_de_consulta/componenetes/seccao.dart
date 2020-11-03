import 'package:estado_da_bolsa/app/pages/tela_de_consulta/componenetes/tiled_info.dart';
import 'package:flutter/material.dart';

class Seccao extends StatelessWidget {
  const Seccao({
    Key key,
    this.titlo,
    this.infos,
  }) : super(key: key);

  final String titlo;
  final List<TiledInfo> infos;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          titlo,
          style: TextStyle(
            color: Color(0xffdc3545),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Divider(
          height: 1,
          indent: 10,
          endIndent: 10,
          color: Colors.black,
        ),
        ...infos,
      ],
    );
  }
}