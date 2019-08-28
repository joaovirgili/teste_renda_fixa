import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:teste_renda_fixa/pages/listagem/listagem-bloc.dart';
import 'package:teste_renda_fixa/shared/models/fundo.model.dart';
import 'package:teste_renda_fixa/shared/widgets/card-fundo.dart';

class Listagem extends StatefulWidget {
  Listagem({Key key}) : super(key: key);
  @override
  _ListagemState createState() => _ListagemState();
}

class _ListagemState extends State<Listagem> {
  final fundo = FundoRenda.fromJson({
    "aplicacao_minima": 5000,
    "classe": "Fundo Multimercado",
    "cnpj": "34.669.263/0001-56",
    "gestor": "Ut enim ad minima veniam",
    "liquidez": "D+1",
    "nome": "at vero eos et accusamus et iusto odio dignissimos",
    "perfil": "agressivo",
    "rentabilidade": "16.72",
    "score": "6.8",
  });

  @override
  Widget build(BuildContext context) {
    final ListagemBloc bloc = BlocProvider.getBloc<ListagemBloc>();
    // var fundos = bloc.getFundos();
    // print(fundos);
    return Scaffold(
      appBar: AppBar(
        title: Text('Teste prático renda fixa'),
      ),
      body: StreamBuilder<Object>(
          stream: bloc.fundos$,
          initialData: [],
          builder: (BuildContext context, snapshot) {
            print(snapshot.data);
            if (snapshot.hasData) {
              List<dynamic> fundos = snapshot.data;
              return ListView(
                  children: fundos.map((fundo) {
                return Center(
                  child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: CardFundo(
                        fundo: fundo,
                        width: 300,
                        height: 200,
                        onTap: () {
                          print('tapped');
                        },
                      )),
                );
              }).toList());
            } else {
              return CircularProgressIndicator();
            }
          }),
    );
  }
}
