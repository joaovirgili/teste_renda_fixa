import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/subjects.dart';
import 'package:teste_renda_fixa/services/fundos-service.dart';
import 'package:teste_renda_fixa/shared/models/fundo.model.dart';

class ListagemBloc implements BlocBase {
  FundosService fundosService;

  ListagemBloc() {
    fundosService = FundosService();
    this.getFundos().then(this.addFundo.add);
  }

  Future<List<FundoRenda>> getFundos() async => await fundosService.getFundos();

  BehaviorSubject<List<FundoRenda>> _fundosController =
      BehaviorSubject.seeded(null);
  Stream<List<FundoRenda>> get fundos$ => _fundosController.stream;
  Sink<List<FundoRenda>> get addFundo => _fundosController.sink;

  @override
  void addListener(listener) {}

  @override
  void dispose() {
    _fundosController.close();
  }

  @override
  bool get hasListeners => null;

  @override
  void notifyListeners() {}

  @override
  void removeListener(listener) {}
}
