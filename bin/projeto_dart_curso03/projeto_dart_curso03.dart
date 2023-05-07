import 'transporte.dart';
import 'viagem.dart';

void main() {

  Viagem viagemMaio = Viagem(locomocao: Transporte.aviao);

  print(viagemMaio.consultarTotalLocaisVisitados);

  viagemMaio.alterarLocaisVisitados = 100; //forma de passar valor com setter
  print(viagemMaio.consultarTotalLocaisVisitados);

}