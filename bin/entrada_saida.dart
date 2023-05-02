import 'dart:io';

main() {

  stdin.readLineSync(); //o código só irá rodar após receber algo pelo teclado

  print('Qual sua idade?');
  String? input = stdin.readLineSync(); //armazenando o que foi recebido em uma variável
  if(input != null) {
    int idade = int.parse(input); //convertendo para int
    print("sua idade é $input");
  }

}