import 'package:bloc/bloc.dart';

class EventoValidaPassword {}

sealed class EstadoPasswordValidada {
  final String password;

  EstadoPasswordValidada(this.password);
}

class EstadoPasswordCorrecta extends EstadoPasswordValidada {
  EstadoPasswordCorrecta(super.password);
}

class EstadoPasswordIncorrecta extends EstadoPasswordValidada {
  EstadoPasswordIncorrecta(super.password);
}

class validaPasswordBloc
    extends Bloc<EventoValidaPassword, EstadoPasswordValidada> {
  validaPasswordBloc() : super(EstadoPasswordIncorrecta('')) {
    on<EventoValidaPassword>((event, emit) {});
  }
}
