class Produto {
  String nome;
  double preco;
  int estoque;

  Produto(this.nome, this.preco, this.estoque);

  Produto.semEstoque(this.nome, this.preco) : estoque = 0;

  Produto.promocao(this.nome, double precoOriginal, this.estoque)
    : preco = precoOriginal * 0.8;

  void exibirInfo() {
    print(
      'Produto: $nome | R\$ ${preco.toStringAsFixed(2)} | Estoque: $estoque',
    );
  }
}

void main() {
  var p1 = Produto.semEstoque('Headset Esgotado', 250.00);
  var p2 = Produto.promocao('Mouse Gamer Off', 100.00, 50);

  p1.exibirInfo();
  p2.exibirInfo();
}
