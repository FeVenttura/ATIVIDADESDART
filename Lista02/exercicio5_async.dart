import 'dart:async';

Future<String> buscarDadosLentos() async {
  await Future.delayed(Duration(seconds: 5));
  return 'Estes são os dados secretos!';
}

void main() async {
  print('Iniciando busca de dados...');

  try {
    final resultado = await buscarDadosLentos().timeout(Duration(seconds: 3));

    print('Sucesso: $resultado');
  } on TimeoutException {
    print(
      '\nErro amigável: Poxa, a operação demorou muito! Verifique sua conexão e tente novamente.',
    );
  } catch (e) {
    print('\nErro: $e');
  }

  print('Fim da execução.');
}
