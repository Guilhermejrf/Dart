class Turma{
  List<Aluno> alunos = [];

void adicionarAluno(Aluno aluno){
  alunos.add(aluno);
}

void mostrarAlunos(){
  for(Aluno aluno in alunos){
    print("Nome: ${aluno.nome}, Turma: ${aluno.turma}, Nota 1: ${aluno.nota1.toStringAsFixed(2)}, Nota 2: ${aluno.nota2.toStringAsFixed(2)}, Nota 3: ${aluno.nota3.toStringAsFixed(2)}, Média: ${aluno.media.toStringAsFixed(2)}");
  }
}
}

class Aluno{
  String nome;
  int turma;
  double nota1;
  double nota2;
  double nota3;
  late double media;

  Aluno (this.nome, this.turma, this.nota1, this.nota2, this.nota3){
    media = (nota1 + nota2 + nota3) / 3;

  }
}