import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:teste_renda_fixa/shared/models/fundo.model.dart';

import 'detalhe-bloc.dart';

class DetalheFundo extends StatelessWidget {
  DetalheFundo({@required this.fundo}) : super();

  final FundoRenda fundo;
  final DetalheBloc bloc = BlocProvider.getBloc<DetalheBloc>();

  @override
  Widget build(BuildContext context) {
    // bloc.addDetalhe.add(null);
    bloc.getDetalhe(this.fundo.cnpj);
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes'),
      ),
      body: Center(
          child: StreamBuilder<String>(
              stream: bloc.detalhe$,
              initialData: null,
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return CircularProgressIndicator();
                } else if (snapshot.data.isNotEmpty)
                  return Text(snapshot.data);
                else {
                  return Text('Sem detalhes');
                }
              })),
    );
  }
}
