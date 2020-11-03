import 'package:estado_da_bolsa/app/cubits/tela_de_consulta.dart';
import 'package:estado_da_bolsa/app/pages/tela_de_consulta/tela_de_consulta.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Estado da bolsa de estudo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Color(0xff282936),
      ),
      home: BlocProvider(
        create: (_) => HomeCubit(_),
        child: Home(),
      ),
    );
  }
}
