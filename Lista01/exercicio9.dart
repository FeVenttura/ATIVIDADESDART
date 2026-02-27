void listarProdutos(Map<int, String> bancoDeDados) {
  print('\n--- Catálogo de Produtos ---');
  if (bancoDeDados.isEmpty) {
    print('O catálogo está vazio.');
  } else {
    bancoDeDados.forEach((id, nome) {
      print('ID: $id -> Produto: $nome');
    });
  }
}

void buscarPorId(Map<int, String> bancoDeDados, int id) {
  if (bancoDeDados.containsKey(id)) {
    print('Busca (ID $id): Encontrado -> ${bancoDeDados[id]}');
  } else {
    print('Busca (ID $id): Produto não encontrado.');
  }
}

void removerProduto(Map<int, String> bancoDeDados, int id) {
  if (bancoDeDados.containsKey(id)) {
    String? itemRemovido = bancoDeDados.remove(id);
    print('Remoção: "$itemRemovido" (ID $id) foi excluído do sistema.');
  } else {
    print('Remoção: Falha. O ID $id não existe.');
  }
}

void main() {
  print('--- Produtos ---');

  Map<int, String> produtos = {
    101: 'Teclado Mecânico',
    102: 'Mouse Gamer',
    103: 'Monitor 144Hz',
    104: 'Headset RGB',
    105: 'Webcam HD',
  };

  listarProdutos(produtos);

  print('\n--- Buscas ---');
  buscarPorId(produtos, 103);
  buscarPorId(produtos, 999);

  print('\n--- Remoção ---');
  removerProduto(produtos, 102);

  listarProdutos(produtos);
}
