void main() {

  print('Started Main');
  functionOne();
  print('Finished Main');

}

void functionOne() {
  print('Started F01');
  functionTwo();
  print('Finished F01');
}

void functionTwo() {
  print('Started F02');
  for(int i = 1; i <= 5; i++) {
    print(i);
  }
  print('Finished F02');
}