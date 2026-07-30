abstract class Funcionario {
  String nome;
  double salario;

  Funcionario(this.nome, this.salario);

  void mostrarDados();
}

class Gerente extends Funcionario {
    String departamento;
    
    Gerente(super.nome, super.salario, this.departamento);
    
    @override
    void mostrarDados() {
        print('Gerente: $nome \n Salário: $salario \n Departamento: $departamento');
    }
}

class Caixa extends Funcionario {
    String turno;
    
    Caixa(super.nome, super.salario, this.turno);
    
    @override
    void mostrarDados() {
        print('Caixa: $nome \n Salário: $salario \n Turno: $turno');
    }
}

class Atendente extends Funcionario {
    String setor;
    
    Atendente(super.nome, super.salario, this.setor);
    
    @override
    void mostrarDados() {
        print('Atendente: $nome \n Salário: $salario \n Setor: $setor');
    }
}