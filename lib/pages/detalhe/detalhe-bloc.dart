import 'package:bloc_pattern/bloc_pattern.dart';

class DetalheBloc implements BlocBase {
  DetalheBloc();

  teste() => print('asdasd');

  @override
  void addListener(listener) {}

  @override
  void dispose() {}

  @override
  bool get hasListeners => null;

  @override
  void notifyListeners() {}

  @override
  void removeListener(listener) {}
}
