abstract class Funcionario {
  String nome;
  Funcionario(this.nome);
  
  void calcularSalario();
}

class Professor extends Funcionario {
  double salarioAula;
  Professor(super.nome, this.salarioAula);

  void calcularSalario() {
    print('O salário do professor $nome é: R\$${salarioAula * 1.1}');
  }
}