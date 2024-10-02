import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:txtfield_password/txt_formatear_numero/formatea_numero_bloc.dart';

class TextFieldFormateaNumero extends StatelessWidget {
  const TextFieldFormateaNumero({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 400,
        child: BlocProvider(
          create: (context) => FormateaNumeroBloc(),
          child: const TxtFormateaNumero(),
        ));
  }
}

class TxtFormateaNumero extends StatelessWidget {
  const TxtFormateaNumero({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final numeroBloc = context.read<FormateaNumeroBloc>();
    String numero = '';
    return BlocBuilder<FormateaNumeroBloc, EstadoNumeroFormateado>(
      builder: (context, state) {
        if (state is EstadoComaAgregada) {
          numero = state.numero;
        }
        final controller = TextEditingController(text: numero);
        controller.selection =
            TextSelection.fromPosition(TextPosition(offset: numero.length));

        return TextField(
          controller: controller,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            label: Text('Ingresa un numero'),
          ),
          onChanged: (value) {
            numeroBloc.add(EventoAgregaComas(value));
          },
        );
      },
    );
  }
}
