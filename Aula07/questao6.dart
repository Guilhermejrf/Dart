void questao6 () {
curso ads = curso('ads', 120, 'italo');
ads.mostrarDados();
ads.curs = 'Analise e Desenvolvimento de Sistemas';

print("O nome do curso é: ${ads.curs}");
}

class curso {
 String _curs;
 double cargahoraria;
 String professor;

 curso (this._curs, this.cargahoraria, this.professor);

 String get curs => _curs;

set curs (var curs) {
_curs = curs ;
}

void mostrarDados() {
print('$_curs, $cargahoraria, $professor');

}
}