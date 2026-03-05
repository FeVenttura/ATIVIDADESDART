Stream<int> contadorStream() async* {
  for (int i = 1; i <= 10; i++) {
    await Future.delayed(Duration(seconds: 1));

    yield i;
  }
}

void main() {
  print('Iniciando o contador...');

  contadorStream().listen(
    (numero) {
      print('Número recebido: $numero');
    },

    onDone: () {
      print('Contagem finalizada!');
    },
  );
}
