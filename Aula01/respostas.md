## Aula 01
Parte 1 — 10 questões abertas com explicação 
1. Desenvolvimento Mobile 
Explique com suas palavras o que é desenvolvimento mobile e cite dois  exemplos de aplicativos que fazem parte do seu cotidiano. 

R: É a criação de aplicativos para dispositivos móveis (tipo celulares) 
Instagram e Whatsapp
2. Aplicações Mobile 
Quais características tornam um aplicativo mobile diferente de um sistema feito  para computador? Explique considerando tela, toque, mobilidade e recursos do  aparelho. 
R: É feito para telas menores, têm touch na tela (isso pode mudar o design do aplicativo) e pode pedir recursos que um telefone normalmente tem.
3. Android e iOS 
Explique a diferença entre Android e iOS. Na sua resposta, diga em quais tipos  de aparelhos cada sistema é utilizado. 

R: Android: É usado em vários celulares de diferentes marcas e o iOS é usado apenas nos dispositivos da Apple


4. Aplicativo Mobile, Web e Desktop 
Explique a diferença entre: 
a) Aplicativo mobile
R: Aplicativo para celulares e tablets
b) Sistema web 
R: Sistemas usados em navegador
c) Sistema desktop 
R: Sistemas instalados no seu computador
Dê um exemplo para cada um. 
a) Aplicativo mobile
R:  Tiktok
b) Sistema web 
R: Youtube
c) Sistema desktop 
R: Steam
5. Aplicações Nativas
O que é uma aplicação nativa? Explique uma vantagem e uma desvantagem de  desenvolver um aplicativo nativo para Android ou iOS. 

R: Uma aplicação nativa é feita especificamente para um sistema (Android ou iOS por exemplo) 


Vantagem: Desempenho melhor por conta de utilizar os recursos específicos do celular
Desvantagem: Pode precisar criar várias versões, uma para cada sistema
6. Aplicações Híbridas 
Explique o que é uma aplicação híbrida. Por que dizemos que ela mistura  características de aplicações web com aplicações mobile? 
R: Ela mistura características das aplicações de site e as móbiles. Ela usa tecnologia web para rodar no sistema do celular 
7. Aplicações Multiplataforma 
Explique o que significa desenvolver uma aplicação multiplataforma. Por que  tecnologias como Flutter podem ser interessantes para equipes pequenas? 

R: Funciona em mais de um sistema com uma base de código parecida. Ele é interessante pois permite criar aplicativo para mais de um sistema usando Dart
8. Flutter 
Explique o que é Flutter e qual é sua função no desenvolvimento de aplicativos  mobile. 
R: Flutter é um framework usado para criar aplicativos mobile
9. Widgets no Flutter 
No Flutter, dizemos que quase tudo é um widget. Explique o que é um widget e  cite quatro exemplos de widgets usados na construção de interfaces. 
R: Widget é uma parte da interface de um aplicativo Flutter. Quase tudo no Flutter é feito com widgets. Exemplos: Text, Container, Row e Column. 
10. Dart e Flutter 
Explique a relação entre Dart e Flutter. Na sua resposta, deixe claro qual deles  é a linguagem de programação e qual é o framework.
R: Dart é a linguagem de programação. Flutter é o framework usado para criar aplicativos, então, usamos a linguagem Dart para programar dentro do Flutter. 

Parte 2 — 10 questões de código em Dart 
Instrução para as questões de código 
Resolva usando apenas os conteúdos iniciais de Dart: 
• main() 
• print() 
• variáveis 
• tipos de dados: String, int, double, bool 
• operadores básicos 
• interpolação de texto 
• estrutura condicional if e else 
11. Primeiro código em Dart 
Crie um programa em Dart que exiba no console a seguinte mensagem: Estou aprendendo Dart para criar aplicativos mobile. 
R: void main() {
  print('Estou aprendendo Dart para criar aplicativos mobile.');
}
12. Dados de um usuário 
Crie um programa em Dart com as seguintes variáveis: 
• nome do usuário; 
• idade; 
• cidade; 
• curso. 
Depois, exiba todas as informações usando print().
R:void main() {
  String nome = 'Guilherme';
  int idade = 17;
  String cidade = 'Paulista';
  String curso = 'ADS';

  print('Nome: $nome');
  print('Idade: $idade');
  print('Cidade: $cidade');
  print('Curso: $curso');
}

13. Perfil de aplicativo 
Crie um programa em Dart que armazene: 
• nome de um aplicativo; 
• categoria do aplicativo; 
• quantidade de usuários; 
• se o aplicativo está ativo ou não. 
Use os tipos String, int e bool. 
Depois, exiba as informações no console. 

R: void main() {
  String nomeapp = 'AcendePE';
  String categoria = 'Logística';
  int quantidadeUsuarios = 1000;
  bool ativo = false;

  print('Nome do aplicativo: $nomeAplicativo');
  print('Categoria: $categoria');
  print('Quantidade de usuários: $quantidadeUsuarios');
  print('Aplicativo ativo: $ativo');
}

14. Cálculo de média 
Crie um programa em Dart que tenha duas notas de um aluno. Depois, calcule a média e exiba a mensagem: 
A média do aluno é: ... 

R: void main() {
  double nota1 = 6.0;
  double nota2 = 7.0;
  double media = (nota1 + nota2) / 2;

  print('A média do aluno é: $media');
}

15. Verificação de idade 
Crie um programa em Dart que armazene a idade de um usuário. Se a idade for maior ou igual a 18, exiba: 
Cadastro permitido. 
Caso contrário, exiba: 
Cadastro não permitido.

Use apenas if e else. 

R: void main() {
  int idade = 18;

  if (idade >= 18) {
    print('Cadastro permitido.');
  } else {
    print('Cadastro não permitido.');
  }
}

16. Verificação de senha 
Crie um programa em Dart que armazene uma senha correta e uma senha  digitada. 
Se as duas senhas forem iguais, exiba: 
Login realizado com sucesso. 
Caso contrário, exiba: 
Senha incorreta. 
Use apenas if e else. 

R: void main() {
  String senhaCorreta = 'dart123';
  String senhaDigitada = 'dart123';

  if (senhaCorreta == senhaDigitada) {
    print('Login realizado com sucesso.');
  } else {
    print('Senha ou sla oq incorretos.');
  }

17. Produto disponível 
Crie um programa em Dart que armazene a quantidade de um produto em  estoque. 
Se a quantidade for maior que zero, exiba: 
Produto disponível. 
Caso contrário, exiba: 
Produto indisponível. 
Use apenas if e else.


R: void main() {
  int agua= 5;

  if (agua > 0) {
    print('Produto disponível.');
  } else {
    print('Produto indisponível.');
  }
}

18. Saldo suficiente 
Crie um programa em Dart que armazene: 
• saldo do usuário; 
• valor de uma compra. 
Se o saldo for maior ou igual ao valor da compra, exiba: Compra aprovada. 
Caso contrário, exiba: 
Saldo insuficiente. 
Use double para os valores. 

R: void main() {
  double saldo = 100.0;
  double valor = 45.0;

  if (saldo >= valor) {
    print('Compra aprovada.');
  } else {
    print('Saldo insuficiente.');
  }
}

19. Número positivo ou negativo 
Crie um programa em Dart que armazene um número inteiro. Se o número for maior ou igual a zero, exiba: 
Número positivo ou zero. 
Caso contrário, exiba: 
Número negativo. 
Use apenas if e else. 

R: void main() {
  int numero = -3;

  if (numero >= 0) {
    print('Número positivo ou zero.');
  } else {
    print('Número negativo.');
  }
}

20. Usuário ativo no aplicativo 
Crie um programa em Dart que armazene:
Exercício de Fixação 
Professor: Ítalo Nunes 
Disciplina: Desenvolvimento Mobile 
Turma: 3° B 
• nome do usuário; 
• idade; 
• se a conta está ativa ou não. 
Se a conta estiver ativa, exiba: 
Usuário ativo no sistema. 
Caso contrário, exiba: 
Usuário inativo no sistema. 
Depois, exiba também o nome e a idade do usuário usando interpolação de texto.

R: void main() {
  String nome = 'Guilherme';
  int idade = 17;
  bool ContaAtiva = true;

  if (ContaAtiva) {
    print('Usuário ativo no sistema.');
  } else {
    print('Usuário inativo no sistema.');
  }

  print('Nome: $nome');
  print('Idade: $idade anos');
}




