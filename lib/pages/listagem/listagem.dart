import 'package:flutter/material.dart';
import 'package:teste_renda_fixa/shared/models/fundo.model.dart';
import 'package:teste_renda_fixa/shared/widgets/fundo-card.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text('Teste prático renda fixa'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child:CardFundo(
                fundo: fundo,
                width: 300,
                height: 200,
              ),
              elevation: 5,
            ),
          ),
        ],
      ),
    );
  }
}
