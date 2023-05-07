import 'transporte.dart';
import 'viagem.dart';

void main() {

  Viagem viagemMaio = Viagem(locomocao: Transporte.aviao);

  print(viagemMaio.consultarTotalLocaisVisitados);



}