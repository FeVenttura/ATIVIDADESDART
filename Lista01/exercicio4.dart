double calcularArea(double largura, double altura) {
  return largura * altura;
}

double calcularAreaArrow(double l, double h) => l * h;
void main() {
  double val1 = 5;
  double val2 = 10;

  print('Área (Tradicional): ${calcularArea(val1, val2)}');
  print('Área (Arrow Function): ${calcularAreaArrow(val1, val2)}');
}
