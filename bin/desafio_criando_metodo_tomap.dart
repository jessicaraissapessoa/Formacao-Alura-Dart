class Pessoa{
  String nome;
  int idade;
  bool estaAutenticada;

  Pessoa(this.nome, this.idade, this.estaAutenticada);

  Map<String,dynamic> toMap(){

    Map<String, dynamic> resultado = {};

    resultado['nome'] = nome;
    resultado['idade'] = idade;
    resultado['estaAutenticada'] = estaAutenticada;

    return resultado;

  }
}

void main() {

  Pessoa jessica = Pessoa('Jéssica', 32, true);

  print(jessica.toMap());

}