class Produto {
  String nome;
  double preco;
  int estoque;

  Produto(this.nome, this.preco, this.estoque);

  void exibirInfo() {
    print(
      'Produto: $nome | Preço: R\$ ${preco.toStringAsFixed(2)} | Estoque: $estoque',
    );
  }
}

void main() {
  print('--- Informações dos produtos ---\n');

  var p1 = Produto('Notebook Dell', 3500.00, 5);
  var p2 = Produto('Mouse Logitech', 150.50, 20);
  var p3 = Produto('Teclado Mecânico', 300.00, 12);

  p1.exibirInfo();
  p2.exibirInfo();
  p3.exibirInfo();
}
