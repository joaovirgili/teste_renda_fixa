import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:teste_renda_fixa/pages/detalhe/detalhe-bloc.dart';
import 'package:teste_renda_fixa/pages/listagem/listagem.dart';

import 'pages/listagem/listagem-bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: BlocProvider(
        child: Listagem(),
        blocs: [
          Bloc((i) => ListagemBloc()),
          Bloc((i) => DetalheBloc()),
        ],
      ),
    );
  }
}
