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






Set<String> registrarDestinos(String destino, Set<String> banco) {
  //adiciona destino no banco e retorna ele atualizado
  banco.add(destino);
  return banco;
}
