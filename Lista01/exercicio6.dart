double executarOperacao(double a, double b, Function operacao) {
  return operacao(a, b);
}

double somar(double a, double b) => a + b;
double multiplicar(double a, double b) => a * b;
double dividir(double a, double b) => a / b;
double subtrair(double a, double b) => a - b;

void main() {
  print('--- Operações ---');

  var resSoma = executarOperacao(10, 5, somar);
  print('Soma: $resSoma');

  var resMulti = executarOperacao(10, 5, multiplicar);
  print('Multiplicação: $resMulti');

  var resDiv = executarOperacao(10, 5, dividir);
  print('Divsão: $resDiv');

  var resSub = executarOperacao(10, 5, subtrair);
  print('Subtração: $resSub');
}
