import 'dart:io';

void main() {

  print('Started Main');
  functionOne();
  print('Finished Main');

}

void functionOne() {
  print('Started F01');

  try {
    functionTwo();
  } on FormatException catch (exception, stackTrace) {
    print(exception);
    print(stackTrace);
    rethrow;
  } finally {
    print('Chegou no Finally');
  }

  // //tratando a exceção ao redor da functionTwo:
  // try {
  //   functionTwo();
  // } on FormatException catch(e) {
  //     print('Foi capturada dentro da FunctionOne');
  //     print(e.message); //Invalid double
  //     print(e.source); //Not a number
  //     print(e.toString()); //FormatException: Invalid double / not a number
  // } on IOException catch(e) {
  //     print("Uma IOException foi encontrada");
  //     e.toString();
  // } /*on HttpException catch(e) { //cinza porque é subtipo de IOException, que já trata a exceção, que não chegará a HttpException
  //     e.toString();
  // } */ on Exception catch(e) {
  //   print(e.toString());
  // }

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