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
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titlo,
            style: TextStyle(
              color: Color(0xff000000),
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(
            height: 1,
            indent: 10,
            endIndent: 10,
            color: Colors.black,
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: infos,
            ),
          ),
        ],
      ),
    );
  }
}
