void questao4(){
  Funcionario Guilherme = Funcionario("Guilherme", "Desenvolvedor Full-Stack", 6500);
  Guilherme.mostrarFuncionario();
  Guilherme.nome = "Guilherme José";

  print("O nome do funcionário é: ${Guilherme.nome}");
}

class Funcionario{
  String _nome;
  String cargo;
  double salario;

  Funcionario(this._nome, this.cargo, this.salario);

   String get nome => _nome;

set nome (var nome) {
_nome = nome ;
}

  void mostrarFuncionario(){
    print("Nome: $_nome \n Cargo: $cargo \n Salario $salario");
  }
}