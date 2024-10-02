//Metodo para agregar comas a un conjunto de numeros
String agregaComa(String numero) {
  String numeroReversa = numero.replaceAll(',', '').split('').reversed.join('');
  String numFormateado = '';

  for (var i = 0; i < numeroReversa.length; i++) {
    if (i != 0 && i % 3 == 0) {
      numFormateado += ',';
    }
    numFormateado += numeroReversa[i];
  }
  return numFormateado.split('').reversed.join('');
}
