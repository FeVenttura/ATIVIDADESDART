import 'dart:async';

void main() async {
  print('--- Iniciando o Servidor de Chat ---');

  StreamController<String> chatController = StreamController<String>();

  chatController.stream.listen(
    (mensagem) {
      print('Mensagem recebida: $mensagem');
    },
    onDone: () {
      print('\n[Servidor]: Conexão encerrada pelo host.');
    },
  );

  List<String> mensagens = [
    'Jogador1: Fala mano!',
    'Jogador1: Bora Overzin hj??',
    'Jogador2: Entro, que horas?',
    'Jogador1: Agora feio',
    'Jogador2: Belê',
  ];

  for (String msg in mensagens) {
    await Future.delayed(Duration(seconds: 1));

    chatController.sink.add(msg);
  }

  chatController.close();
}
