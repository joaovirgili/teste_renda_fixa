import 'package:flutter/material.dart';
import 'package:teste_renda_fixa/shared/models/fundo.model.dart';

class CardFundo extends StatelessWidget {
  const CardFundo({
    @required this.fundo,
    @required this.width,
    @required this.height,
  }) : super();

  final FundoRenda fundo;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: Column(
        children: <Widget>[
          TituloCard(
            fundo: fundo,
            width: width,
            height: height * 0.15,
            padding: EdgeInsets.only(left: 8),
          ),
          ConteudoNome(
            fundo: fundo,
            width: width,
            height: height * 0.35,
            padding: EdgeInsets.only(left: 12.0),
          ),
          Container(
            width: width,
            decoration: BoxDecoration(
              border:
                  Border(bottom: BorderSide(width: 0.3, color: Colors.black38)),
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26),
        borderRadius: BorderRadius.circular(3),
        color: Colors.white,
      ),
    );
  }
}

class ConteudoNome extends StatelessWidget {
  const ConteudoNome({
    Key key,
    @required this.fundo,
    @required this.width,
    @required this.height,
    @required this.padding,
  }) : super(key: key);

  final FundoRenda fundo;
  final double width;
  final double height;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.height,
      padding: this.padding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            this.fundo.nome.toUpperCase(),
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            'CNPJ: ${this.fundo.cnpj}'.toUpperCase(),
            style: TextStyle(color: Colors.black38, fontSize: 10),
          )
        ],
      ),
    );
  }
}

class TituloCard extends StatelessWidget {
  const TituloCard({
    Key key,
    @required this.fundo,
    @required this.width,
    @required this.height,
    @required this.padding,
  }) : super(key: key);

  final FundoRenda fundo;
  final double width;
  final double height;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.height,
      padding: this.padding,
      color: Color(this.fundo.cor),
      child: Row(
        children: <Widget>[
          Text(
            this.fundo.classe,
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}
