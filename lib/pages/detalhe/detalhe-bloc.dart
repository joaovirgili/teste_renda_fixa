import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';
import 'package:teste_renda_fixa/services/fundos-service.dart';

class DetalheBloc implements BlocBase {
  FundosService fundosService;

  DetalheBloc() {
    fundosService = FundosService();
  }

  getDetalhe(String cnpj) {
    this.addDetalhe.add(fundosService.getDetalhe(cnpj));
  }

  BehaviorSubject<String> _detalheController = BehaviorSubject.seeded("");
  Stream<String> get detalhe$ => _detalheController.stream;
  Sink<String> get addDetalhe => _detalheController.sink;

  @override
  void addListener(listener) {}

  @override
  void dispose() {
    _detalheController.close();
  }

  @override
  bool get hasListeners => null;

  @override
  void notifyListeners() {}

  @override
  void removeListener(listener) {}
}
