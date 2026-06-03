abstract class Personagem {
  String nome;
  Personagem(this.nome);
  
  void atacar();
}

class Mago extends Personagem {
  Mago(super.nome);

  void atacar() {
    print('O mago: $nome usou Queda Cósmica!!!!!');
  }
}

class Guerreiro extends Personagem {
  Guerreiro(super.nome);

  void atacar() {
    print('O guerreiro: $nome usou Corte Celestial!!!!!');
  }
}