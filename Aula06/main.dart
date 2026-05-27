// void main() {
  // questao1();
  // questao2();
  // questao3();
  // questao4();
  // questao4pt2();
  // questao5();
  // questao6();
// }

// void questao1(){
//   Produto Bicicleta = Produto("Bike", 8000, 22);
//   Produto Computador = Produto("Pc Pichau Gamer", 10000, 20);
//   Produto Fone = Produto("Fone Bluetooth", 89.90, 10);
  
//   Bicicleta.mostrarDados();
//   Computador.mostrarDados();
//   Fone.mostrarDados();
// }
// class Produto{
 
//  String nome;
//  double preco;
//  int quantidade;

//  Produto(this.nome, this.preco, this.quantidade);

// void mostrarDados(){
//   print("nome: $nome\n Preço: $preco \n Quantidade: $quantidade");
//   calcularTotal();
// }

// void calcularTotal(){
//  double calculoscalculantes = preco * quantidade;
//  print("O calculo calculante do preço e da quantidade no estoque é: $calculoscalculantes");
// }
// }

// void questao2(){
//   Equipamento Calculadora = Equipamento("Calculadora", 201940, "Sala 6", true);
//   Equipamento Lousa = Equipamento("Lousa", 201941, "Sala 6", false);
//  Equipamento Mouse = Equipamento("Mouse", 201942, "Sala 6", true);


//   Calculadora.mostrarDados();
//   Lousa.mostrarDados();
//   Mouse.mostrarDados();

// }

// class Equipamento{
//   String nome;
//   int patrimonio;
//   String laboratorio;
//   bool status;

// Equipamento(this.nome,this.patrimonio,this.laboratorio,this.status);

//   void mostrarDados(){
//     print("Nome: $nome \n Patrimônio: $patrimonio \n $laboratorio \n $status");
//   }

// }

// void questao3(){
//   Livro Harry = Livro("Harry Potter e a Pedra Filosofal", "J. K. Rowling", 1997);
//   Livro Inseto = Livro("A metamorfose", "Franz Kafka", 1915);
//   Livro Hobbit = Livro("O hobbit", "J.R.R. Tolkien", 1937);

//   Harry.mostrarDados();
//   Inseto.mostrarDados();
//   Hobbit.mostrarDados();


// }

// class Livro{
//   String titulo;
//   String autor;
//   int anoPublicacao;

//   Livro(this.titulo, this.autor, this.anoPublicacao);

//   void mostrarDados(){
//     print("Titulo: $titulo \n Autor: $autor \n Ano de Publicação do livro: $anoPublicacao");
//   }
// }

// void questao4(){
//   Funcionario Guilherme = Funcionario("Guilherme", "Desenvolvedor Full-Stack", 6500);
//   Guilherme.mostrarFuncionario();
// }

// class Funcionario{
//   String nome;
//   String cargo;
//   double salario;

//   Funcionario(this.nome, this.cargo, this.salario);

//   void mostrarFuncionario(){
//     print("Nome: $nome \n Cargo: $cargo \n Salario $salario");
//   }
// }

// void questao4pt2(){
//   Personagem Gpz = Personagem("Gpz MiraBamba", 100, 200);
//   Gpz.atacar();
// }

// class Personagem{
//   String nome;
//   double vida;
//   int forca;

//   Personagem(this.nome, this.vida, this.forca);

//   void atacar(){
//     print("O personagem: $nome , Causou $vida de dano com a força de: $forca");
//   }
// }

// void questao5() {
// celular Iphone = celular('Iphone', '12', 128);
// Iphone.mostrarDados();
// }

// class celular {
//  String marca;
//  String modelo;
//  int armazenamento;

//  celular (this.marca, this.modelo , this.armazenamento);

// void mostrarDados() {

// print('$marca, $modelo, $armazenamento');
// }
// }

// void questao6 () {
// curso ads = curso('ads', 120, 'italo');
// ads.mostrarDados();
// }

// class curso {
//  String curs;
//  double cargahoraria;
//  String professor;

//  curso (this.curs, this.cargahoraria, this.professor);

// void mostrarDados() {
// print('$curs, $cargahoraria, $professor');

// }
// }