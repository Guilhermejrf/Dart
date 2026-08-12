double  calcularMedia(double nt1, double nt2){
  if (nt1 < 0 || nt1 > 10 || nt2 < 0 || nt2 > 10){
    throw ArgumentError('As notas devem ser entra 10 e 0');
  }

  double media = (nt1 + nt2) / 2;
  return media;
}

  String reprovou(double media){
    if (media > 7) {
      return "Aluno aprovado";
    } else if (media >=5){
      return "Aluno em recuperação";
    } else {
      return 'Aluno reprovado';
    }
  }