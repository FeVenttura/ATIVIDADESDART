import 'dart:async';

Future<String?> autenticarUsuario(String usuario, String senha) async {
  await Future.delayed(Duration(seconds: 1));
  if (usuario == 'admin' && senha == '123') {
    return 'token';
  }
  return null;
}

Future<Map<String, int>> buscarEstatisticas() async {
  await Future.delayed(Duration(seconds: 2));
  return {'vendas': 42, 'visitas': 1050};
}

Future<List<String>> buscarNotificacoes() async {
  await Future.delayed(Duration(seconds: 2));
  return ['Novo acesso detectado', 'Atualização disponível'];
}

Stream<String> conectarWebSocket() async* {
  List<String> eventos = [
    'Usuário logou',
    'Compra aprovada',
    'Mensagem recebida',
  ];
  for (String evento in eventos) {
    await Future.delayed(Duration(seconds: 1));
    yield evento;
  }
}

void main() async {
  try {
    String? token = await autenticarUsuario('admin', '123');

    if (token == null) {
      throw Exception('Autenticação falhou. Verifique as credenciais.');
    }

    print('1. Usuário autenticado: $token\n');

    var resultados = await Future.wait([
      buscarEstatisticas(),
      buscarNotificacoes(),
    ]);

    Map<String, int> estatisticas = resultados[0] as Map<String, int>;
    List<String> notificacoes = resultados[1] as List<String>;

    print('2. Dados carregados:');
    print('Estatísticas: $estatisticas');
    print('Notificações: $notificacoes\n');

    print('3. Escutando eventos ao vivo...');
    StreamSubscription<String>? inscricao;

    inscricao = conectarWebSocket().listen(
      (evento) {
        print('-> Evento recebido: $evento');
      },
      onError: (erro) {
        print('Erro no WebSocket: $erro');
      },
      onDone: () {
        print('\nConexão encerrada.');
        inscricao?.cancel();
      },
    );
  } catch (erro) {
    print('Erro crítico no sistema: $erro');
  }
}
