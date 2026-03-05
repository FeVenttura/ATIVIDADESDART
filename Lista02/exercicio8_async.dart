Stream<int> numerosStream() async* {
  for (int i = 1; i <= 20; i++) {
    await Future.delayed(Duration(milliseconds: 500));
    yield i;
  }
}

void main() {
  print('Iniciando o processamento da Stream...');

  numerosStream()
      .where((n) => n % 2 == 0)
      .map((n) => n * 2)
      .take(5)
      .listen(
        (n) {
          print('Resultado: $n');
        },
        onDone: () {
          print('A escuta foi cancelada automaticamente pelo .take(5)!');
        },
      );
}
