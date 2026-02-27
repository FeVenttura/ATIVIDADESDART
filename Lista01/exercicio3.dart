void main() {
  String conversao = '42';
  print('Original (String): $conversao | Tipo: ${conversao.runtimeType}');

  int numero = int.parse(conversao);
  print('Convertido para int: $numero | Tipo: ${numero.runtimeType}');

  double numerodouble = double.parse(conversao);
  print(
    'Convertido para double: $numerodouble | Tipo: ${numerodouble.runtimeType}',
  );

  int novoValor = 100;
  String valorConvertido = novoValor.toString();
  print('\nNovo valor (int): $novoValor | Tipo: ${novoValor.runtimeType}');
  print(
    'Convertido para String: $valorConvertido | Tipo: ${valorConvertido.runtimeType}',
  );
}
