class ContaBancaria {
  String titular;
  double saldo;

  ContaBancaria(this.titular, this.saldo);

  void depositar(double valor) {
    saldo += valor;
  }

  void sacar(double valor) {
    if (saldo >= valor) {
      saldo -= valor;
    } else {
      print('Saldo insuficiente');
    }
  }
}

class ContaPoupanca extends ContaBancaria {
  ContaPoupanca(String titular, double saldo) : super(titular, saldo);

  void aplicarRendimento(double taxa) {
    saldo += saldo * taxa;
  }
}

void main() {
  var cp = ContaPoupanca('Fernando', 1000.00);

  cp.depositar(500.00);
  cp.sacar(200.00);
  cp.aplicarRendimento(0.05);

  print(
    'Titular: ${cp.titular} | Saldo Atual: R\$ ${cp.saldo.toStringAsFixed(2)}',
  );
}
