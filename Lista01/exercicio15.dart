mixin Voador {
  void voar() => print('Voando...');
}

mixin Nadador {
  void nadar() => print('Nadando...');
}

mixin Corredor {
  void correr() => print('Correndo...');
}

class Pato with Nadador, Voador {
  String nome;
  Pato(this.nome);
}

class Golfinho with Nadador {
  String nome;
  Golfinho(this.nome);
}

class Avestruz with Corredor {
  String nome;
  Avestruz(this.nome);
}

void main() {
  var pato = Pato('Donald');
  print('--- Pato ---');
  pato.nadar();
  pato.voar();

  var golfinho = Golfinho('Flipper');
  print('\n--- Golfinho ---');
  golfinho.nadar();

  var avestruz = Avestruz('Papa-léguas');
  print('\n--- Avestruz ---');
  avestruz.correr();
}
