void main() {
  questao1();
  questao2();
  questao3();
  questao4();
  questao5();
  questao6();
  questao7();
  questao8();
  questao9();
  questao10();
}

void questao1() {
  List<String> nomes = ['Ana', 'Bruno', 'Carlos', 'Guilherme', 'Davi'];

  for (int i = 0; i < nomes.length; i++) {
    print(nomes[i]);
  }

  nomes.forEach((nome) {
    print(nome);
  });

  print('Quantidade de nomes: ${nomes.length}');

  nomes.add('Fernanda');
  nomes.add('Lucas');

  print('Lista atualizada: $nomes');
}

void questao2() {
  List<int> numeros = [4, 8, 15, 16, 23, 42];

  for (int i = 0; i < numeros.length; i++) {
    print('Posição $i: ${numeros[i]}');

    if (numeros[i] > 10) {
      print('${numeros[i]} é maior que 10');
    }
  }

  print('Total de elementos: ${numeros.length}');
}

void questao3() {
  List<String> frutas = ['Maçã', 'Banana', 'Uva', 'Laranja', 'Melancia'];

  print('Lista original: $frutas');

  frutas.remove('Uva');

  print('Lista depois da remoção: $frutas');

  frutas.add('Morango');

  frutas.forEach((fruta) {
    print(fruta);
  });
}

void questao4() {
  List<String> disciplinas = [
    'Matemática',
    'Português',
    'História',
    'Geografia',
    'Biologia'
  ];

  for (int i = 0; i < disciplinas.length; i++) {
    print('Posição $i: ${disciplinas[i]}');
  }

  String removida = disciplinas.removeAt(2);

  print('Disciplina removida: $removida');
  print('Lista atualizada: $disciplinas');
  print('Novo total de disciplinas: ${disciplinas.length}');
}

void questao5() {
  List<String> alunos = ['Lucas', 'Carol', 'Gabriela', 'Davi', 'Guilherme'];
  String alunoProcurado = 'Davi';
  int posicao = -1;

  for (int i = 0; i < alunos.length; i++) {
    if (alunos[i] == alunoProcurado) {
      posicao = i;
      break;
    }
  }

  if (posicao != -1) {
    print('Aluno encontrado na posição $posicao.');
  } else {
    print('Aluno não encontrado.');
  }
}

void questao6() {
  List<double> notas = [8.5, 7.0, 9.5, 6.0, 10.0];
  double soma = 0;

  for (int i = 0; i < notas.length; i++) {
    soma = soma + notas[i];
  }

  double media = soma / notas.length;

  print('Média final da turma: $media');

  if (media >= 7) {
    print('A turma foi aprovada.');
  } else {
    print('A turma ficou de recuperação.');
  }
}

void questao7() {
  List<int> numeros = [2, 5, 8, 11, 14, 17, 20, 23, 26, 30];
  int quantidadePares = 0;

  for (int i = 0; i < numeros.length; i++) {
    if (numeros[i] % 2 == 0) {
      print('Par encontrado: ${numeros[i]}');
      quantidadePares++;
    }
  }

  print('Total de números pares: $quantidadePares');
}

void questao8() {
  List<int> numeros = [1, 4, 7, 10, 13, 16, 19, 22, 25, 28];
  int quantidadeImpares = 0;

  numeros.forEach((numero) {
    if (numero % 2 != 0) {
      print('Ímpar encontrado: $numero');
      quantidadeImpares++;
    }
  });

  print('Total de números ímpares: $quantidadeImpares');
}

void questao9() {
  List<String> tarefas = [];

  print('A lista está vazia? ${tarefas.isEmpty}');

  tarefas.add('Estudar Dart');
  tarefas.add('Resolver exercícios');
  tarefas.add('Praticar lógica');
  tarefas.add('Revisar o código');

  print('A lista está vazia? ${tarefas.isEmpty}');

  tarefas.forEach((tarefa) {
    print(tarefa);
  });

  print('Total de tarefas: ${tarefas.length}');
}

void questao10() {
  List<int> numeros = [10, 20, 30, 40, 50];

  for (int i = 0; i < numeros.length; i++) {
    numeros[i] = numeros[i] * 2;
  }

  print('Valores atualizados: $numeros');
  print('O for é melhor nesse caso porque permite acessar e alterar cada índice da lista.');
}