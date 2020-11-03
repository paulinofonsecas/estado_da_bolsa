import 'package:estado_da_bolsa/app/cubits/tela_de_consulta.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TelaDePesquisa extends StatelessWidget {
  const TelaDePesquisa({
    Key key,
    @required this.cubit,
  }) : super(key: key);

  final TelaDeConsultaCubit cubit;


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
                        controller: cubit.biTextController,
                        onChanged: (text) {
                          if (text.length == 14) {
                            cubit.pesquisarBolseiro();
                          }
                        },
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          // prefix: Icon(
                          //   Icons.search,
                          //   color: Colors.white,
                          //   size: 25,
                          // ),
                          hintText: 'Numero do B.I',
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(90),
                              borderSide: BorderSide(color: Colors.white),
                              gapPadding: 20),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(90),
                              borderSide: BorderSide(color: Colors.white),
                              gapPadding: 20),
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
