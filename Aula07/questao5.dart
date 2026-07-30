void questao5() {
celular Iphone = celular('Iphone', '12', 128);
Iphone.mostrarDados();
Iphone.marca = 'Xiaomi';

print("O nome da marca do celular é: ${Iphone.marca}");
}

class celular {
  String _marca;
 String modelo;
 int armazenamento;

  celular (this._marca, this.modelo , this.armazenamento);

  String get marca => _marca;

set marca (var marca) {
_marca = marca ;
}

void mostrarDados() {
print('$_marca, $modelo, $armazenamento');
}
}