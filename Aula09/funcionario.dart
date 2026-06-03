 class Funcionario {
  
  void calcularSalario(){
  }
}

class Professor implements Funcionario{
  double salarioaula;
  int aulas;

  Professor(this.salarioaula, this.aulas);

  @override
  void calcularSalario() {
    double total = salarioaula * aulas;
    print('O salário do professor é: $total');
  }
}

class Coordenador implements Funcionario{
  double salariobase;
  int horasextras;

  Coordenador(this.salariobase, this.horasextras);

  @override
  void calcularSalario() {
    double total = salariobase + (horasextras * 50);
    print('O salário do coordenador é: $total');
  }
}

class Estagiario implements Funcionario{
  double salariobase;
  int horastrabalhadas;

  Estagiario(this.salariobase, this.horastrabalhadas);

  @override
  void calcularSalario() {
    double total = salariobase + (horastrabalhadas * 20);
    print('O salário do estagiário é: $total');
  }
}