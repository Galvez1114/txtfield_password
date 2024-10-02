import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:txtfield_password/txt_validacion_password/bloc/bloc.dart';

class validaPassword extends StatelessWidget {
  const validaPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<validaPasswordBloc, EstadoPasswordValidada>(
      builder: (context, state) {
        return const MiTextField();
      },
    );
  }
}

class MiTextField extends StatelessWidget {
  const MiTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: TextField(
      obscureText: true,
      onChanged: (value) {
        context.read<validaPasswordBloc>().add(EventoValidaPassword());
      },
    ));
  }
}
