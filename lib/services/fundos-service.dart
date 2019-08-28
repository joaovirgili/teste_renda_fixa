import 'dart:convert';

import 'package:teste_renda_fixa/shared/models/fundo.model.dart';

class FundosService {
  FundosService();

  List<FundoRenda> getFundos() {
    var apiResponse = '''
    [
      {
        "aplicacao_minima": 5000,
        "classe": "Fundo Multimercado",
        "cnpj": "34.669.263/0001-56",
        "gestor": "Ut enim ad minima veniam",
        "liquidez": "D+1",
        "nome": "at vero eos et accusamus et iusto odio dignissimos",
        "perfil": "agressivo",
        "rentabilidade": "16.72",
        "score": "6.8"
      },
      {
        "aplicacao_minima": 1000,
        "classe": "Fundo Multimercado",
        "cnpj": "24.339.263/0001-56",
        "gestor": "lorem ipsum dolor sit amet",
        "liquidez": "D+29",
        "nome": "ducimus qui blanditiis praesentium voluptatum deleniti",
        "perfil": "moderado",
        "rentabilidade": "11.72",
        "score": "5.8"
      },
      {
        "aplicacao_minima": 1000,
        "classe": "Fundo Multimercado",
        "cnpj": "14.669.103/0101-56",
        "gestor": "consectetur adipiscing elit",
        "liquidez": "D+29",
        "nome": "atque corrupti quos dolores et quas molestias excepturi sint sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi",
        "perfil": "moderado",
        "rentabilidade": "19.72",
        "score": "9.2"
      }
    ]
    ''';
    // var apiResponse = '''
    // [
    //   {
    //     "aplicacao_minima": 5000,
    //     "classe": "Fundo Multimercado",
    //     "cnpj": "34.669.263/0001-56",
    //     "gestor": "Ut enim ad minima veniam",
    //     "liquidez": "D+1",
    //     "nome": "at vero eos et accusamus et iusto odio dignissimos",
    //     "perfil": "agressivo",
    //     "rentabilidade": "16.72",
    //     "score": "6.8"
    //   }
    // ]
    // ''';

    List fundos = jsonDecode(apiResponse);
    return fundos.map((fundo) => FundoRenda.fromJson(fundo)).toList();
  }
}
