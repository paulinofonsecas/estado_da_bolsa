import 'package:estado_da_bolsa/app/cubits/tela_de_consulta.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TelaDePesquisa extends StatefulWidget {
  TelaDePesquisa({
    Key key,
    @required this.cubit,
  }) : super(key: key);

  final HomeCubit cubit;

  @override
  _TelaDePesquisaState createState() => _TelaDePesquisaState();
}

class _TelaDePesquisaState extends State<TelaDePesquisa> {
  Color borderColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff282936),
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: TextField(
                        controller: widget.cubit.biTextController,
                        onChanged: (text) {
                          if (text.length == 14) {
                            setState(() {
                              borderColor = Colors.green;
                            });
                          } else {
                            setState(() {
                              borderColor = Colors.blue;
                            });
                          }
                        },
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          suffix: IconButton(
                            padding: EdgeInsets.zero,
                            icon: Icon(
                              Icons.search,
                              color: borderColor,
                              size: 25,
                            ),
                            onPressed: widget.cubit.pesquisarBolseiro,
                          ),
                          hintText: 'Número do B.I',
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: borderColor,
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: borderColor,
                            ),
                          ),
                          contentPadding: EdgeInsets.zero,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              SizedBox(
                width: 200,
                height: 200,
                child: SvgPicture.asset('assets/svgs/search_2.svg'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
