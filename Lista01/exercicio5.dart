void saudar({
  required String nome,
  String titulo = 'Sr.',
  bool mostrarHora = false,
}) {
  String saudacao = 'Olá, $titulo $nome!';

  if (mostrarHora) {
    saudacao += ' Agora são: ${DateTime.now()}';
  }

  print(saudacao);
}

void main() {
  saudar(nome: 'Fernando');

  saudar(nome: 'Fernando', titulo: 'Coordenador de suporte', mostrarHora: true);
}
