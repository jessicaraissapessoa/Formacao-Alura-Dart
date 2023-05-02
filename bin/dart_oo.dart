void main() {

  String nome = "Laranja";
  double peso = 100.2;
  String cor = "Verde e amarela";
  String sabor = "Doce e cítrica";
  int diasDesdeColheita = 20;
  bool isMadura;

  Fruta melancia = Fruta('Melancia', 1500.0, 'Verde', 'Doce', 40);
  melancia.estaMadura(43);
  
  Legumes mandioca1 = Legumes('Macaxeira', 1200, 'Marrom', true);
  Fruta banana1 = Fruta('Banana', 75, 'Amarela', 'Doce', 12);
  Nozes macadamia1 = Nozes('Macadâmia', 2, 'Branco amarelado', 'Doce', 20, 35);
  Citricas limao1 = Citricas('Limão', 100, 'Verde', 'Azedo', 5, 9);

  macadamia1.printAlimento();
  banana1.printAlimento();
  mandioca1.printAlimento();
  limao1.printAlimento();

  mandioca1.cozinhar();
  limao1.fazerSuco();

  banana1.separarIngredientes();
  macadamia1.fazerMassa();

}



bool funcEstaMadura(int dias) {

  if (dias >= 30) {
    return true;
  } else {
    return false;
  }

}

void mostrarMadura({required String nome, required int dias, required String cor}) {
  if (dias >= 30) {
    print('$nome está madura');
  } else {
    print('$nome não está madura');
  }

  if (cor != null) {
    print("A $nome é $cor");
  }

}

int funcQuantosDiasMadura(int dias){
  int diasParaMadura = 30;
  int quantosDiasFaltam = diasParaMadura - dias;
  return quantosDiasFaltam;
}



class Alimento {

  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);

  void printAlimento() {
    print('Este(a) $nome pesa $peso gramas e é $cor');
  }

}

class Fruta extends Alimento implements Bolo{

  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(String nome, double peso, String cor, this.sabor, this.diasDesdeColheita, {this.isMadura}) : super(nome, peso, cor);

  estaMadura(int diasParaMadura){
    isMadura = diasDesdeColheita >= diasParaMadura; //isMadura é true se diasDesdeColheita for > que diasParaMadura
    print('A sua $nome foi colhida a $diasDesdeColheita dias e precisa de $diasParaMadura para poder comer. Ela está madura? $isMadura');
  }

  void fazerSuco() {
    print('Você fez um ótimo suco de $nome');
  }

  @override
  void separarIngredientes() {
    print('Catar $nome');
  }

  @override
  void fazerMassa() {
    print('Misturar a fruta com farinha, açúcar, ovos...');
  }

  @override
  void assar() {
    print('Colocar no forno');
  }

}

class Legumes extends Alimento implements Bolo{

  bool isPrecisaCozinhar;

  Legumes(String nome, double peso, String cor, this.isPrecisaCozinhar) : super(nome, peso, cor);

  void cozinhar() {
    if(isPrecisaCozinhar) {
      print('Pronto, o(a) $nome está cozinhando');
    } else {
      print('Nem precisa cozinhar');
    }
  }

  @override
  void separarIngredientes() {
    // TODO: implement separarIngredientes
  }

  @override
  void fazerMassa() {
    // TODO: implement fazerMassa
  }

  @override
  void assar() {
    // TODO: implement assar
  }

}

class Citricas extends Fruta{

  double nivelAzedo;

  Citricas(String nome, double peso, String cor, String sabor, int diasDesdeColheita, this.nivelAzedo) : super(nome, peso, cor, sabor, diasDesdeColheita);

  void existeRefri(bool existe){
    if(existe){
      print('Existe refrigerante de $nome');
    } else {
      print('Não existe refrigerante de $nome');
    }
  }

}

class Nozes extends Fruta{

  double porcentagemOleoNatural;

  Nozes(String nome, double peso, String cor, String sabor, int diasDesdeColheita, this.porcentagemOleoNatural) : super(nome, peso, cor, sabor, diasDesdeColheita);

  @override //o que fica abaixo dele é acessado e sobrescrito
  void fazerMassa(){
    print('Tirar a casca');
    super.fazerMassa(); //chama fazerMassa no super (Fruta)
    //acrescenta o print e depois executa o que há em fazerMassa
  }

}

abstract class Bolo{

  void separarIngredientes();

  void fazerMassa();

  void assar();

  }


