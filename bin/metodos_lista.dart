void main() {

  List <String> lista = ['um', 'dois', 'três', 'quatro'];
  print(lista);

  

  ///adicionar

  lista.add('cinco');
  print(lista);


  ///remover

  lista.remove('cinco');
  print(lista);


  ///sublist - recorte da lista / ir a partir de um ponto
  
    //parâmetro de partida
  List <String> sublist1 = lista.sublist(2);
  print(sublist1);
  
    //parâmetro de partida e de término / o término é exclusivo (Ex: índice 3 não aparece)
  List <String> sublist2 = lista.sublist(1, 3);
  print(sublist2);

  ///foreach - "para cada um" / fazer uma 'operação' para cada um / tipo um for
    //para cada elemento...
  lista.forEach((element) {
    print(element);
  });
  print('Acabou');


  ///contains - ver se há algo na lista

  String procurando = 'três';
  if (lista.contains(procurando)) {
    print('Achou');
  } else {
    print('Não achou');
  }
    //indo direto
  if (lista.contains('seis')) {
    print('Achou');
  } else {
    print('Não achou');
  }

    //se eu quiser saber se NÃO contém o elemento -> !
  if (!lista.contains('seis')) {
    //se for falso que ele contém 'seis'...
    print('Achou');
  } else {
    print('Não achou');
  }

    //usando verificação direta com booleano
  print(!lista.contains('seis')); //é verdade que lista NÂO contém 'seis'? true

  ///reduce - reduzir todas as informações a apenas um objeto
  String numeros = lista.reduce((value, element) {
    //transformar tudo em uma string inserindo um espaço entre cada um
    return "$value $element";// ou return value + " " + element;
  });
  print(numeros);



  ///where - pegar elemento da lista que atenda a uma condição (não levando em conta o índice)
    //where não dá uma lista de fato. Ele dá um interable ('pai da lista', coleção, não tem todas as propriedades da lista)
  // dá erro: List <String> maior = lista.where((element) => element.length > 3);
  Iterable maior = lista.where((element) => element.length > 3);
  print(maior);
    //para converter em lista e não ter que lidar com Iterable:
  print(maior.toList());
    //ou direto
  List <String> maiorDireto = lista.where((element) => element.length > 3).toList();



  ///firstWhere - o primeiro que atende à condição
  String maiorFirst = lista.firstWhere((element) => element.length > 3);
  print(maiorFirst);



  ///lastWhere - o último que atende à condição
  String maiorLast = lista.lastWhere((element) => element.length > 3);
  print(maiorLast);


}