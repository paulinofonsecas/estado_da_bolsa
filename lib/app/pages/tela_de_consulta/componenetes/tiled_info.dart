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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                titlo,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Text(
                desc,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Divider(
            height: 1,
            indent: 10,
            endIndent: 10,
            color: Colors.black.withOpacity(0.4),
          ),
        ],
      ),
    );
  }
}
