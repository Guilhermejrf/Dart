void questao1(){
  Produto Bicicleta = Produto("Bike", 8000, 22);
  Produto Computador = Produto("Pc Pichau Gamer", 10000, 20);
  Produto Fone = Produto("Fone Bluetooth", 89.90, 10);
  
  Bicicleta.mostrarDados();
  Computador.mostrarDados();
  Fone.mostrarDados();
  Fone.nome = "Fone de Ouvido Bluetooth";

  print("O nome do produto é: ${Fone.nome}");
}
class Produto{
 
 String _nome;
 double preco;
 int quantidade;

 Produto(this._nome, this.preco, this.quantidade);

 String get nome => _nome;

set nome (var nome) {
_nome = nome ;
}

void mostrarDados(){
  print("nome: $_nome\n Preço: $preco \n Quantidade: $quantidade");
  calcularTotal();
}

void calcularTotal(){
 double calculoscalculantes = preco * quantidade;
 print("O calculo calculante do preço e da quantidade no estoque é: $calculoscalculantes");
}
}