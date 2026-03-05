Future<void> carregarDados() async {
  try {
    var dados = await Future.wait([
      buscarProdutos(),
      buscarPromocoes(),
      buscarDestaques(),
    ]);

    var usuario = dados[0];
    var promocoes = dados[1];
    var destaques = dados[3];

    print('Dados carregados');
  } catch (e) {
    print ('Erro: $e');
  }
}