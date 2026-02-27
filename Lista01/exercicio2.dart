void main() {
  const pi = 3.14159;

  final dataAtual = DateTime.now();

  print('Valor de PI: $pi');
  print('Data/Hora de acesso: $dataAtual');

  // DOCUMENTAÇÃO DOS ERROS:

  // pi = 3.14;
  // ERRO: "Constant variables can't be assigned a value."
  // O valor de uma 'const' é imutável e fixo desde o momento que você escreve o código.

  // dataAtual = DateTime.now();
  // ERRO: "The final variable 'dataAtual' can only be set once."
  // Embora 'final' seja definido só quando o programa roda, uma vez que ele recebe o valor,
  // ele se torna bloqueado para novas alterações.
}
