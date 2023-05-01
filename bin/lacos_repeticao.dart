void main() {

// if/else

  bool maiorDeIdade;

  int idade = 18;

  if(idade >= 18) {
    maiorDeIdade = true;
    print(maiorDeIdade);
  } else {
    maiorDeIdade = false;
    print(maiorDeIdade);
  }

// for

  for(int i = 1; i < 5; i++)
    {
      print('Concluí $i volta(s)');
    }

// while

  int energia = 100;

  while (energia > 0) {
    print('Mais uma repetição');
    energia = energia - 25;
  }

// do/while

  do{
    //faz primeiro e nas próximas compara
    print('Mais uma');
    energia = energia - 50;
  } while (energia > 0);


}