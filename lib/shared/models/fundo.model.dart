class FundoRenda {
  int aplicacaoMinima;
  String classe;
  String cnpj;
  String gestor;
  String liquidez;
  String nome;
  String perfil;
  String rentabilidade;
  String score;
  int cor;

  FundoRenda(
      {this.aplicacaoMinima,
      this.classe,
      this.cnpj,
      this.gestor,
      this.liquidez,
      this.nome,
      this.perfil,
      this.rentabilidade,
      this.score,
      this.cor});

  FundoRenda.fromJson(Map<String, dynamic> json) {
    aplicacaoMinima = json['aplicacao_minima'];
    classe = json['classe'];
    cnpj = json['cnpj'];
    gestor = json['gestor'];
    liquidez = json['liquidez'];
    nome = json['nome'];
    perfil = json['perfil'];
    rentabilidade = json['rentabilidade'];
    score = json['score'];
    this.cor = this.perfil == 'agressivo' ? 0xffF18900 : 0xff44B95C;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['aplicacao_minima'] = this.aplicacaoMinima;
    data['classe'] = this.classe;
    data['cnpj'] = this.cnpj;
    data['gestor'] = this.gestor;
    data['liquidez'] = this.liquidez;
    data['nome'] = this.nome;
    data['perfil'] = this.perfil;
    data['rentabilidade'] = this.rentabilidade;
    data['score'] = this.score;
    return data;
  }
}
