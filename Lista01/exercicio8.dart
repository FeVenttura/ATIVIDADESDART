void main() {
  List<String> Frutas = ['Maçã', 'Banana', 'Manga', 'Uva', 'Morango', 'Pitaya'];

  print('Lista Original: $Frutas');

  List<String> frutasComM = Frutas.where(
    (fruta) => fruta.startsWith('M'),
  ).toList();

  print('\nFrutas começando com "M": $frutasComM');

  List<String> frutasMaiusculas = Frutas.map(
    (fruta) => fruta.toUpperCase(),
  ).toList();

  print('\nFrutas em LETRA MAIÚSCULA: $frutasMaiusculas');
}
