void main() {
  int progresso = 0;

  do {
    print('Download: $progresso%');
    progresso += 20;
  } while (progresso <= 100);
}
