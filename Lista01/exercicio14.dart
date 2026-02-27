abstract class Veiculo {
  void acelerar();
}

class Carro extends Veiculo {
  @override
  void acelerar() {
    print('Carro acelerando: Vrummmmm!');
  }
}

class Moto extends Veiculo {
  @override
  void acelerar() {
    print('Moto acelerando: Randandan!');
  }
}

class Caminhao extends Veiculo {
  @override
  void acelerar() {
    print('Caminhão Acelerando: Rammmmmmmm tchiu');
  }
}

void main() {
  List<Veiculo> frota = [Carro(), Moto(), Caminhao()];

  frota.forEach((veiculo) => veiculo.acelerar());
}
