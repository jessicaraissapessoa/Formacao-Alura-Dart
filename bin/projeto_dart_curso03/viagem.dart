import 'transporte.dart';

class Viagem {

  static String codigoTrabalho = "DJNADS12";
  double dinheiro = 0; //ou usa construtor ou inicializa com zero
  Transporte locomocao;

  Set<String> registrosVisitados = <String>{}; //É como se fosse um banco de registros de locais visitados
  Map<String, dynamic> registrarPrecos = {}; //Banco de registro dos preços dos locais visitados

  int _totalLocaisVisitados = 5614561546; //Variável privada

  //Construtor usando parâmetro nomeável:
  Viagem({required this.locomocao});

  printCodigo() {
    print(codigoTrabalho);
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

  void visitar (String localVisita) { //Função de registrar viagens
    registrosVisitados.add(localVisita);
    _totalLocaisVisitados += 1;
  }

  void registrarPrecoVisita(String local, dynamic preco) {
    registrarPrecos[local] = preco;
  }

  int get consultarTotalLocaisVisitados {
    return _totalLocaisVisitados;
  }

  void set alterarLocaisVisitados (int novaQnt) {
    _totalLocaisVisitados = novaQnt;
  }

}