void main() {
  String jogador = 'Lucas';
  int pontuacao = 0;

  for (int fase = 1; fase <= 5; fase++) {
    pontuacao += 10;
    print('$jogador concluiu a fase $fase e está com $pontuacao pontos.');
  }

  print('Pontuação final de $jogador: $pontuacao pontos.');
}
