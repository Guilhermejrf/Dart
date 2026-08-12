import 'package:tdd_aula/tdd_aula.dart';
import 'package:test/test.dart';

void main() {
  test('Calcular a média e ver se está dando o valor correto', () {
    expect(calcularMedia(8, 10), 9);
  });

  test('Se não tiver uma nota válida', () {
    expect(() => calcularMedia(-1, 10), throwsArgumentError);
  });
  test('Se o aluno foi aprovado', () {
    expect(reprovou(calcularMedia(10, 8)), "Aluno aprovado");
  });
  test('Se o aluno foi reprovado', () {
    expect(reprovou(calcularMedia(4, 5)), "Aluno reprovado");
  });
 test('Se o aluno ficou em recuperação', () {
    expect(reprovou(calcularMedia(6, 5)), "Aluno em recuperação");
  });
}
