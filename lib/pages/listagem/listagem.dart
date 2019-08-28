import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:teste_renda_fixa/pages/detalhe/detalhe.dart';
import 'package:teste_renda_fixa/pages/listagem/listagem-bloc.dart';
import 'package:teste_renda_fixa/shared/models/fundo.model.dart';
import 'package:teste_renda_fixa/shared/widgets/card-fundo.dart';

class Listagem extends StatefulWidget {
  static const String routeName = '/';
  Listagem({Key key}) : super(key: key);
  @override
  _ListagemState createState() => _ListagemState();
}

class _ListagemState extends State<Listagem> {
  @override
  Widget build(BuildContext context) {
    final ListagemBloc bloc = BlocProvider.getBloc<ListagemBloc>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Teste prático renda fixa'),
      ),
      body: StreamBuilder<List<FundoRenda>>(
          stream: bloc.fundos$,
          initialData: null,
          builder: (BuildContext context, snapshot) {
            if (snapshot.hasData) {
              List<FundoRenda> fundos = snapshot.data;
              return ListView(
                  children: fundos.map((fundo) {
                return Center(
                  child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: CardFundo(
                        fundo: fundo,
                        width: 300,
                        height: 200,
                        onTap: () => navegaParaDetalhe(context, fundo),
                      )),
                );
              }).toList());
            } else {
              return Center(child: CircularProgressIndicator());
            }
          }),
    );
  }
}

void navegaParaDetalhe(BuildContext context, FundoRenda fundo) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => DetalheFundo(fundo: fundo)));
}
