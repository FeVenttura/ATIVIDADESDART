Future<String> buscarUsuario() {
  return Future.delayed(Duration(seconds: 2), () => 'Fernando Ventura');
}

void main() async {
  try {
    print('Loading...');

    String nome = await buscarUsuario();

    print('Usuário: $nome');
  } catch (erro) {
    print('Erro: $erro');
  }
}
