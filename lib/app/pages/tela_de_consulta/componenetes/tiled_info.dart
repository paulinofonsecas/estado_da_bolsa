import 'package:flutter/material.dart';

class TiledInfo extends StatelessWidget {
  const TiledInfo({
    Key key,
    @required this.titlo,
    @required this.desc,
  }) : super(key: key);

  final String titlo;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(titlo),
        Text(
          desc,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
