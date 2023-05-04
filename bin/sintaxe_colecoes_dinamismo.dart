void main() {

  escolherMeioTransporte(Transporte.carro);

  Set<String> registrosVisitados = <String>{};
  registrosVisitados = registrarDestinos("São Paulo"); //registrosVisitados recebe o que for inserido por registrarDestinos
  print(registrarDestinos('Rio de Janeiro'));

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

Set<String> registrarDestinos(String destino) {

  registrosVisitados.add(destino);
  return registrosVisitados;
}