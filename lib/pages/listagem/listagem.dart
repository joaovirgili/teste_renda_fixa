import 'package:flutter/material.dart';

class Listagem extends StatefulWidget {
  Listagem({Key key}) : super(key: key);
  @override
  _ListagemState createState() => _ListagemState();
}

class _ListagemState extends State<Listagem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teste prático renda fixa'),
      ),
      body: Container(),
    );
  }
}