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
            titulo: this.fundo.classe,
            width: width,
            cor: this.fundo.cor,
            height: height * 0.15,
            padding: EdgeInsets.only(left: 8),
          ),
          ConteudoNome(
            height: height * 0.4,
            width: width,
            cnpj: this.fundo.cnpj,
            nome: this.fundo.nome,
            padding: EdgeInsets.only(left: 12.0),
          ),
          Separador(width: width),
          ConteudoAplicacao(
            aplicacaoMinima: this.fundo.aplicacaoMinima.toString(),
            liquidez: this.fundo.liquidez,
            fundo: fundo,
          ),
          ConteudoRentabilidade(rentabilidade: this.fundo.rentabilidade),
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

class ConteudoRentabilidade extends StatelessWidget {
  const ConteudoRentabilidade({
    Key key,
    @required this.rentabilidade,
  }) : super(key: key);

  final String rentabilidade;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Color(0xfff3f3f3),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'Rentabilidade Anual',
                    style: TextStyle(color: Colors.black54, fontSize: 10),
                  ),
                  Text(
                    '${this.rentabilidade}%',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
            ),
            FlatButton(
              onPressed: () {},
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.add,
                    color: Colors.blue,
                    size: 10,
                  ),
                  Text(
                    'detalhes'.toUpperCase(),
                    style: TextStyle(fontSize: 10, color: Colors.blueAccent),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ConteudoAplicacao extends StatelessWidget {
  const ConteudoAplicacao({
    Key key,
    @required this.aplicacaoMinima,
    @required this.liquidez,
    @required this.fundo,
  }) : super(key: key);

  final String aplicacaoMinima;
  final String liquidez;
  final FundoRenda fundo;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  'Valor Mínimo',
                  style: TextStyle(color: Colors.black54, fontSize: 10),
                ),
                Text(
                  'R\$ ${this.aplicacaoMinima}',
                  style: TextStyle(fontSize: 12, color: Colors.black87),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  'Liquidez',
                  style: TextStyle(color: Colors.black54, fontSize: 10),
                ),
                Text(
                  this.liquidez,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Separador extends StatelessWidget {
  const Separador({
    Key key,
    @required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 1,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 0.3, color: Colors.black38)),
      ),
    );
  }
}

class ConteudoNome extends StatelessWidget {
  const ConteudoNome({
    Key key,
    @required this.cnpj,
    @required this.height,
    @required this.width,
    @required this.nome,
    @required this.padding,
  }) : super(key: key);

  final double height;
  final double width;
  final String cnpj;
  final String nome;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      width: this.width,
      padding: this.padding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            this.nome.toUpperCase(),
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            'CNPJ: ${this.cnpj}'.toUpperCase(),
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
    @required this.titulo,
    @required this.cor,
    @required this.width,
    @required this.height,
    @required this.padding,
  }) : super(key: key);

  final String titulo;
  final double width;
  final double height;
  final int cor;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.height,
      padding: this.padding,
      color: Color(this.cor),
      child: Row(
        children: <Widget>[
          Text(
            this.titulo,
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}
