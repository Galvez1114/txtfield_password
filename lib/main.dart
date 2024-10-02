import 'package:flutter/material.dart';
import 'package:txtfield_password/txt_formatear_numero/widget_numero_formateado.dart';
import 'package:txtfield_password/txt_validacion_password/validadores.dart';
import 'package:txtfield_password/txt_validacion_password/widget_valida_password.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mi widget para password'),
        ),
        body: const Center(
          child: Column(
            children: [TextFieldFormateaNumero()],
          ),
        ),
      ),
    );
  }
}

class mayorDe4letras extends Validadores {
  mayorDe4letras({required super.password});

  @override
  String mensaje() {
    return 'La contraseña debe tener al menos 4 letras';
  }

  @override
  bool validaPassword() {
    return password.length > 4;
  }
}
