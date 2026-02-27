void main() {
  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print('Lista original: $numeros');

  numeros.add(11);
  print('Após adicionar 11: $numeros');

  numeros.remove(5);
  print('Após remover o 5: $numeros');

  print('\nInformações da Lista:');
  print('Tamanho (length): ${numeros.length}');
  print('Primeiro (first): ${numeros.first}');
  print('Último (last): ${numeros.last}');

  print('\nImprimindo item a item:');
  numeros.forEach((numero) {
    print('Item: $numero');
  });
}
