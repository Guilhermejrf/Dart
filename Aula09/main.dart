// import 'personagem.dart';
import 'funcionario.dart';

void main(){
    List<Funcionario> funcionarios = [
        Professor(100.0, 20),
        Coordenador(2000.0, 10),
        Estagiario(1500.0, 30)
    ];

    for (Funcionario funcionario in funcionarios) {
        funcionario.calcularSalario();
    }
}


// void main() {
//   List<Personagem> personagens = [ Mago('Keyaru'), Guerreiro('Guts') ];

//   for (Personagem ataques in personagens) {
//     ataques.atacar();
//   }
// }