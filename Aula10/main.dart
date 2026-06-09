import 'turma.dart';
import 'dart:math';

void main(){
  Turma turma = Turma();

  for(int i = 0; i < 20; i++){
    Aluno aluno = Aluno("Aluno ${i + 1}", Random().nextInt(5) + 1, Random().nextDouble() * 10, Random().nextDouble() * 10, Random().nextDouble() * 10);
    turma.adicionarAluno(aluno);
a
  turma.mostrarAlunos();
  }
}
