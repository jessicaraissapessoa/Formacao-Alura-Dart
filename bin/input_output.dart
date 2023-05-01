import 'dart:io';

void main() {

  //SAÍDA
  int idade = 32;
  print('minha idade é ' + idade.toString()); //conversão
  print('minha idade é $idade'); //interpolação
  print('minha idade ano que vem será ${idade + 1}');

  //ENTRADA

  print("Qual a sua idade?");
  String? input = stdin.readLineSync(); //pode receber uma String nula

  if (input != null) {
    int idade = int.parse(input); //convertendo a String recebida para int
    print('sua idade é $input');
    print('sua idade ano que vem será ${idade + 1}');
  }



}