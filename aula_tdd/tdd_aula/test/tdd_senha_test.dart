import 'package:test/test.dart';
import 'package:tdd_aula/tdd_senha.dart';

void main() {
    group('| Validador de Senha |', () {
    test('Senha válida', () {
      expect(() => validarSenha('Senha123'), returnsNormally);
    });
    test('Senha com menos de 8 caracteres', () {
      expect(() => validarSenha('Senh1'), throwsArgumentError);
    });
    test('Senha sem letra maiúscula', () {
      expect(() => validarSenha('senha123'), throwsArgumentError);
    });
    test('Senha sem número', () {
      expect(() => validarSenha('SenhaSemNumero'), throwsArgumentError);
    });
  });
}
