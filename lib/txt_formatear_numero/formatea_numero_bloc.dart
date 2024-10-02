import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:txtfield_password/txt_formatear_numero/formatear_numero.dart';

class EventoFormateaNumero {}

class EventoAgregaComas extends EventoFormateaNumero {
  final String numero;

  EventoAgregaComas(this.numero);
}

class EstadoNumeroFormateado {}

class EstadoNumeroInicial extends EstadoNumeroFormateado {}

class EstadoComaAgregada extends EstadoNumeroFormateado {
  final String numero;

  EstadoComaAgregada({required this.numero});
}

class FormateaNumeroBloc
    extends Bloc<EventoFormateaNumero, EstadoNumeroFormateado> {
  FormateaNumeroBloc() : super(EstadoNumeroInicial()) {
    on<EventoAgregaComas>((event, emit) {
      emit(EstadoComaAgregada(numero: agregaComa(event.numero)));
    });
  }
}
