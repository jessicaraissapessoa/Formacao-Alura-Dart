void main() {

  escolherMeioTransporte(Transporte.carro);

  Set<String> registrosVisitados = <String>{};

  registrosVisitados = registrarDestinos("São Paulo", registrosVisitados);


  //MAPS

  Map<String, double> registrarPrecos = {};

  registrarPrecos['São Paulo'] = 1200; // [chave] = informações associadas
  registrarPrecos['Rio de Janeiro'] = 1500;

  print(registrarPrecos); //printar todos
  print('São Paulo'); //printar relativo a chave 'São Paulo'

  //atualizando uma chave / substituindo
  registrarPrecos['São Paulo'] = 1900;

  //deletando uma chave
  registrarPrecos.remove('Rio de Janeiro');

  //O padrão, porque a pessoa pode não lembrar exatamente, por exemplo
  Map<String, dynamic> registrarPrecos2 = {};
  registrarPrecos2['São Paulo'] = 'Muito caro!';


  Viagem viagemHoje = Viagem(); //Inicializada com objeto do tipo Viagem
  viagemHoje.printCodigo();
  Viagem.codigoTrabalho;
  print(Viagem.codigoTrabalho);
  print(viagemHoje.printCodigo());


}


void escolherMeioTransporte(Transporte locomocao) {

  switch(locomocao){
    case Transporte.carro:
      print("vou de CARRO para a aventura!");
      break;
    case Transporte.bike:
      print("vou de BIKE para a aventura!");
      break;
    case Transporte.onibus:
      print("vou de ÔNIBUS para a aventura!");
      break;
    default:
      print("Estou indo para a aventura. Isso é o que importa");
      break;
  }

}

enum Transporte {
  //cada elemento no enum, é um elemento para comparação
  carro,
  bike,
  onibus,
  skate
}

Set<String> registrarDestinos(String destino, Set<String> banco) {
  //adiciona destino no banco e retorna ele atualizado
  banco.add(destino);
  return banco;
}

//"Variável estática ou dinâmica?"
class Viagem {
  static String codigoTrabalho = "ABCDE";
  double dinheiro = 0; //ou usa construtor ou inicializa com zero

  printCodigo() {
    return codigoTrabalho;
  }

}
