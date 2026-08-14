void validarSenha(String senha) {
  if (senha.length < 8) {
    throw ArgumentError('A senha deve ter pelo menos 8 caracteres.');
  }
  if (!senha.contains(RegExp(r'[A-Z]'))) {
    throw ArgumentError('A senha deve conter pelo menos uma letra maiúscula.');
  }
  if (!senha.contains(RegExp(r'[0-9]'))) {
    throw ArgumentError('A senha deve conter pelo menos um número.');
  }
}
