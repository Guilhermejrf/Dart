void questao2(){
  Equipamento Calculadora = Equipamento("Calculadora", 201940, "Sala 6", true);
  Equipamento Lousa = Equipamento("Lousa", 201941, "Sala 6", false);
 Equipamento Mouse = Equipamento("Mouse", 201942, "Sala 6", true);


  Calculadora.mostrarDados();
  Lousa.mostrarDados();
  Mouse.mostrarDados();
  Mouse.nome = "Mouse Gamer Razer";

  print("O nome do equipamento é: ${Mouse.nome}");

}

class Equipamento{
  String _nome;
  int patrimonio;
  String laboratorio;
  bool status;

Equipamento(this._nome,this.patrimonio,this.laboratorio,this.status);


String get nome => _nome;

set nome (var nome) {
_nome = nome ;
}


  void mostrarDados(){
    print("Nome: $_nome \n Patrimônio: $patrimonio \n $laboratorio \n $status");
  }

}