void questao3(){
  Livro Harry = Livro("Harry Potter e a Pedra Filosofal", "J. K. Rowling", 1997);
  Livro Inseto = Livro("A metamorfose", "Franz Kafka", 1915);
  Livro Hobbit = Livro("O hobbit", "J.R.R. Tolkien", 1937);

  Harry.mostrarDados();
  Inseto.mostrarDados();
  Hobbit.mostrarDados();
  Harry.titulo = "Harry Potter e a Câmara Secreta";

  print("O nome do livro é: ${Harry.titulo}");
}

class Livro{
  String _titulo;
  String autor;
  int anoPublicacao;

  Livro(this._titulo, this.autor, this.anoPublicacao);

  String get titulo => _titulo;

set titulo (var titulo) {
_titulo = titulo ;
}

  void mostrarDados(){
    print("Titulo: $_titulo \n Autor: $autor \n Ano de Publicação do livro: $anoPublicacao");
  }
}