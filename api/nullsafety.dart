class ContaBancaria {
  String? titular;
  double saldo;

  ContaBancaria({this.titular, this.saldo = 0.0});

  void depositar(double? valor) {
    if (valor != null && valor > 0) {
      saldo += valor;
    }
  }

  void sacar(double? valor) {
    if (valor != null) {
      if (saldo >= valor) {
        saldo -= valor;
      } else {
        print('Saldo insuficiente');
      }
    } else {
      print('Valor inválido');
    }
  }
}

class ContaPoupanca extends ContaBancaria {
  ContaPoupanca({String? titular, double saldo = 0.0}) 
      : super(titular: titular, saldo: saldo);

  void aplicarRendimento(double? taxa) {
    if (taxa != null) {
      saldo += saldo * taxa;
    }
  }
}

void main() {
  var cp = ContaPoupanca(titular: 'Fernando', saldo: 1000.00);

  cp.depositar(500.00);
  cp.sacar(200.00);
  cp.aplicarRendimento(0.05);

  print(
    'Titular: ${cp.titular ?? 'Não informado'} | Saldo Atual: R\$ ${cp.saldo.toStringAsFixed(2)}',
  );
}