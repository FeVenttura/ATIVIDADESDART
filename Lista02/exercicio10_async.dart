import 'dart:async';

void main() {
  print('--- Iniciando Teste de Debounce ---');

  Timer? debounceTimer;

  Stream<String> eventosUsuario = Stream.periodic(
    Duration(milliseconds: 500),
    (contador) => 'Clique ${contador + 1}',
  ).take(5);

  eventosUsuario.listen(
    (evento) {
      print('Usuário realizou: $evento');

      debounceTimer?.cancel();

      debounceTimer = Timer(Duration(seconds: 1), () {
        print('\n O último evento foi: $evento');
      });
    },
    onDone: () {
      print('(Aguardando tempo de inatividade...)');
    },
  );
}
