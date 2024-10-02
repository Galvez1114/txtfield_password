abstract class Validadores {
  final String password;

  Validadores({required this.password});

  bool validaPassword();
  String mensaje();
}
