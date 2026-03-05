Future<String> autenticar() async {
  await Future.delayed(Duration(seconds: 1));
  return 'token_123';
}

Future<Map<String, String>> buscarPerfil(String token) async {
  await Future.delayed(Duration(seconds: 1));

  return {'id': '28', 'nome': 'Fernando Ventura'};
}

Future<List<String>> buscarPedidos(String? userId) async {
  await Future.delayed(Duration(seconds: 1));

  if (userId == '28') {
    return ['Teclado Mecânico', 'Memória RAM', 'Baquetas 5A'];
  }
  return [];
}

void main() async {
  try {
    final token = await autenticar();
    final perfil = await buscarPerfil(token);
    final pedidos = await buscarPedidos(perfil['id']);

    print('Usuário: ${perfil['nome']}');
    print('Pedidos: $pedidos');
  } catch (erro) {
    print('Erro: $erro');
  }
}
