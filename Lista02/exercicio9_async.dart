import 'dart:async';

void main() async {
  print('--- Iniciando Stream (Rádio) ---');

  StreamController<int> radioController = StreamController<int>.broadcast();

  int contador = 0;
  int soma = 0;

  radioController.stream.listen((numero) {
    print('[Ouvinte 1 - Imprime]: O número recebido foi $numero');
  });

  radioController.stream.listen((numero) {
    contador++;
    print('[Ouvinte 2 - Conta]: Já recebi $contador números no total.');
  });

  radioController.stream.listen((numero) {
    soma += numero;
    print('[Ouvinte 3 - Soma]: A soma total até agora é $soma.');
  });

  for (int i = 1; i <= 10; i++) {
    await Future.delayed(Duration(milliseconds: 500));
    print('\n--- Emitindo o número $i ---');

    radioController.sink.add(i);
  }

  radioController.close();

  print('\nTransmissão encerrada!');
  print('Resumo final -> Contagem: $contador | Soma total: $soma');
}
