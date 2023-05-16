void main() {

  print('Started Main');
  functionOne();
  print('Finished Main');

}

void functionOne() {
  print('Started F01');

  //tratando a exceção ao redor da functionTwo:
  try {
    functionTwo();
  } on FormatException {
    print('Foi capturada dentro da FunctionOne');
  }

  print('Finished F01');
}

void functionTwo() {
  print('Started F02');
  for(int i = 1; i <= 5; i++) {
    print(i);

    /*tratando exceção na linha:
    try{
      double amount = double.parse("not a number");
    } on FormatException {
      print('A conversão não pôde ser feita');
    }
     */

    double amount = double.parse("not a number");

  }
  print('Finished F02');
}