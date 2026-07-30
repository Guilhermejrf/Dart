void main() {
  print('Contagem com for:');
  for (int numero = 1; numero <= 5; numero++) {
    print(numero);
  }

  print('Contagem com while:');
  int contadorWhile = 1;
  while (contadorWhile <= 5) {
    print(contadorWhile);
    contadorWhile++;
  }

  print('Contagem com do while:');
  int contadorDoWhile = 1;
  do {
    print(contadorDoWhile);
    contadorDoWhile++;
  } while (contadorDoWhile <= 5);
}
