// void main(){
  // questao1();
  // questao2();
  // questao3();
  // questao4();
  // questao5();
  // questao6();
  // questao7();
  // questao8();
  // questao9();
//}

// void questao1(){
//   List<String> produtos = ['Arroz', 'Feijão', 'Macarrão', 'Leite', 'Café'];
//   print(produtos);
//   produtos.add('Pão');
//   produtos.add('Salsicha');

//   produtos.forEach((nome) {
//      print(nome);
// });

// for (int i = 0; i < produtos.length; i++) {
//   print('Índice $i: ${produtos[i]}');
// }

// print('Removendo Pão...');
//   produtos.remove('Pão');
//   print('Removendo Arroz...');
//   produtos.removeAt(0);

//   print('Lista após remoção:');
//   for (int i = 0; i < produtos.length; i++) {
//     print('Posição $i: ${produtos[i]}');
//   }

//   print('Total de produtos é de: ${produtos.length}');

//   if(produtos.length < 0){
//     print('Não está vazio');
//   } else{
//     print('Tem coisa');
//   }
// }

// void questao2(){
//   List<String> presentes = [];
//   presentes.add('Guilherme');
//   presentes.add('Lucas');
//   presentes.add('Davi');
//   presentes.add('Eduardo');
//   presentes.add('Matheus');

//   presentes.forEach((nomes) {
//    print(nomes);
// });

// for (int ind = 0; ind < presentes.length; ind++) {
// print('Índice $ind: ${presentes[ind]}');
// }

// print('Buscando aluno específico do ID: 3');
// print(presentes[3]);

// print('Removendo Aluno que não está na sala...');
//  presentes.remove('Lucas');
//  print(presentes);

//  print('Total de Alunos é de: ${presentes.length}');
// }

// void questao3(){
//   List<int> numeros = [1,2,3,4,5,6,7,8,9,10];
//   print('Os números pares são: ');
//   for (int i = 0; i < numeros.length; i++) {
//     if ((numeros[i] % 2) == 0){
//       print(numeros[i]);
//     }
//   }
// }

// void questao4(){
//   List<String> lista = ['Guilherme', 'Lucas', 'Davi', 'Eduardo'];

//   lista.forEach((nome){
//     print('Boas vindas: ${nome}');
//   });
// }

// void questao5(){
//   List<double> nota = [9.5, 10, 4, 3.5];
//   double media = (nota[0] + nota[1] + nota[2] + nota[3])/4;
//   print(media);
// }

// void questao6(){
//   *'];
//   print(nomes);
//   print('Filtrando...');
//   for (int i = 0; i < nomes.length; i++) {
//     if (nomes[i] == 'Indisponivel'){
//       nomes.removeAt(i);
//     }
//   }
//   print(nomes);
// }

// void questao7(){
//   List<int> idades = [15, 18, 22, 14, 30, 17, 25, 40, 12];
//   int contador = 0;

//   for (int idade in idades) {
//     if (idade >= 18) {
//       contador++;
// }}
//   print('Quantidade de pessoas maiores de idade: $contador');
// }

// void questao8() {
//   List<String> palavras = ['sol', 'computador', 'carro', 'programação', 'casa', 'dart'];
//   print('Palavras com mais de 5 letras:');
//   for (String palavra in palavras) {
//     if (palavra.length > 5) {
//       print(palavra);
//     }
//   }
// }

// void questao9() {
//   List<double> precos = [10.0, 50.0, 100.0, 250.0];
//   for (int i = 0; i < precos.length; i++) {
//     precos[i] = precos[i] - (precos[i]*0.10); 
//   }
//   print('Preços com 10% de desconto: $precos');
// }