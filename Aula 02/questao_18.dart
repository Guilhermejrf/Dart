void main() {
  int carregamento = 0;

  do {
    print('Carregando jogo: $carregamento%');
    carregamento += 25;
  } while (carregamento <= 100);
}
