import 'dart:convert';

import 'package:teste_renda_fixa/shared/models/fundo.model.dart';

class FundosService {
  FundosService();

  // Simulação da requisição de fundos à API.
  Future<List<FundoRenda>> getFundos() async {
    await Future.delayed(Duration(seconds: 1));
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

    List fundos = jsonDecode(apiResponse);
    return fundos.map((fundo) => FundoRenda.fromJson(fundo)).toList();
  }

  // Simulação da requisição de detalhes à API.
  Future<String> getDetalhe(String cnpj) async {
    await Future.delayed(Duration(seconds: 1));
    switch (cnpj) {
      case "24.339.263/0001-56":
        return "Lorem ipsum dolor sit amet, alia mucius ut mea, veniam petentium instructior ne nec. Pri at epicurei omittantur appellantur. Vim et elit malorum, diam choro nonumes has et. No quaeque aliquid albucius vel, vim libris epicuri referrentur eu. No mei hinc quas omittantur";
        break;
      case "14.669.103/0101-52":
        return "Quo at debitis docendi, no usu detracto lobortis. Diceret debitis omittam cum te, eos cu scriptorem voluptatibus, te amet eius facilis eam. Mel an autem iriure adipisci. Ne per impetus convenire quaerendum, probo feugiat insolens nam et";
        break;
      case "34.669.103/0101-56":
        return "His eu inani copiosae consequuntur, eu autem timeam nusquam pro, alia magna laoreet ea sit. Ne pri legere iriure perpetua. Nullam populo prompta sed te. Nulla laboramus nec ei. Vel eu deleniti noluisse";
        break;
      default:
        return "";
        break;
    }
  }
}
