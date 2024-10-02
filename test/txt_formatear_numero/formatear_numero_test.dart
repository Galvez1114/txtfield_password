import 'package:flutter_test/flutter_test.dart';
import 'package:txtfield_password/txt_formatear_numero/formatear_numero.dart';

void main() {
  test('formatear numero', () {
    String numeroFormateado = agregaComa('8,9,76,1,0,0,0');
    expect(numeroFormateado, equals('89,761,000'));
  });
}
