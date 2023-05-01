void main() {

  //lista

  List <String> listanomes = ['nome1', 'nome2', 'nome3', 'nome4', 'nome5'];

  print(listanomes);
  print(listanomes[0]);

  //lista dinâmica

  List <dynamic> jessica = [32, 1.70, true, 'Jéssica Raissa Pessoa Barros', 'Jessie'];
  print(jessica);

  String frase = 'Eu sou ${jessica[4]}';
  print(frase);

  //constante

  const String teste = 'testando';
  final String apelido;

  //var

  var teste1 = 27;
  var teste2 = 1.70;
  var teste3 = true;

}
