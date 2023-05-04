void main() {

  escolherMeioTransporte(Transporte.carro);

  Set<String> registrosVisitados = <String>{};

  registrosVisitados = registrarDestinos("São Paulo", registrosVisitados); //registrosVisitados recebe o que for inserido por registrarDestinos
  // atualiza registrosVisitados com registrarDestinos
  // ("São Paulo", registrosVisitados) > quando chama registrarDestinos ele passa "São Paulo" como argumento para parâmetro destino e registrosVisitados para banco

  //adicionando mais destinos e repetição:
  registrosVisitados = registrarDestinos("Recife", registrosVisitados);
  registrosVisitados = registrarDestinos("Rio de Janeiro", registrosVisitados);
  registrosVisitados = registrarDestinos("São Paulo", registrosVisitados);


  print(registrosVisitados); //agora printa todos os destinos visitados

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