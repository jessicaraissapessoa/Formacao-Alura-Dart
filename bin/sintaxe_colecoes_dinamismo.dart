void main() {

  escolherMeioTransporte(Transporte.carro);

  Set<String> registrosVisitados = <String>{};

  registrosVisitados = registrarDestinos("São Paulo", registrosVisitados);

  Map<String, double> registrarPrecos = {};

  registrarPrecos['São Paulo'] = 1200; // [chave] = informações associadas
  registrarPrecos['Rio de Janeiro'] = 1500;

  print(registrarPrecos); //printar todos
  print('São Paulo'); //printar relativo a chave 'São Paulo'


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