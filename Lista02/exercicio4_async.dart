Future<String> buscarProdutos() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Teclado, Mouse, Monitor';
}

Future<String> buscarCategorias() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Periféricos, Monitores';
}

Future<String> buscarPromocoes() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Mouse com 20% de desconto';
}

Future<String> buscarDestaques() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Monitor Ultrawide';
}

void main() async {
  print('--- 1. Execução Sequencial ---');
  DateTime inicioSeq = DateTime.now();

  await buscarProdutos();
  await buscarCategorias();
  await buscarPromocoes();
  await buscarDestaques();

  DateTime fimSeq = DateTime.now();
  int tempoSeq = fimSeq.difference(inicioSeq).inSeconds;

  print('Tempo total sequencial: $tempoSeq segundos.\n');

  // --------------------------------------------------

  print('--- 2. Execução Paralela (Future.wait) ---');
  DateTime inicioPar = DateTime.now();

  try {
    var dados = await Future.wait([
      buscarProdutos(),
      buscarCategorias(),
      buscarPromocoes(),
      buscarDestaques(),
    ]);

    var produtos = dados[0];
    var categorias = dados[1];
    var promocoes = dados[2];
    var destaques = dados[3];

    DateTime fimPar = DateTime.now();
    int tempoPar = fimPar.difference(inicioPar).inSeconds;

    print('Resultados carregados:');
    print('- Produtos: $produtos');
    print('- Categorias: $categorias');
    print('- Promoções: $promocoes');
    print('- Destaques: $destaques');

    print('\nTempo total paralelo: $tempoPar segundos.');
  } catch (e) {
    print('Erro ao carregar dados: $e');
  }
}
