void questao4pt2(){
  Personagem Gpz = Personagem("Gpz MiraBamba", 100, 200);
  Gpz.atacar();
  Gpz.nome = "Gpz MiraBamba 2.0";

  print("O nome do personagem é: ${Gpz.nome}");
}
class Personagem{
  String _nome;
  double vida;
  int forca;

  Personagem(this._nome, this.vida, this.forca);

   String get nome => _nome;

set nome (var nome) {
_nome = nome ;
}

  void atacar(){
    print("O personagem: $_nome , Causou $vida de dano com a força de: $forca");
  }
}