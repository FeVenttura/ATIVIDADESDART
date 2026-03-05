Future<String> buscarUsuario() {
  return Future.delayed(Duration(seconds: 2), () => 'Fernando Ventura');
}

void main() {
  buscarUsuario()
      .then((nome) {
        print('Usuário: $nome');
      })
      .catchError((erro) {
        print('Erro: $erro');
      })
      .whenComplete(() {
        print('Busca Finalizada!');
      });
}
