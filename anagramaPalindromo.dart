import 'dart:io';

void main() {
  print("Digite uma palavra para saber se um anagrama dela formará um palíndromo:");
  //input para receber a palavra
  String anagrama = stdin.readLineSync()!;
  //transformando todas as letras em minusculas, caso alguma seja maiuscula
  anagrama = anagrama.toLowerCase();
  //invertendo a ordem das letras para possibilitar a verificação
  String reverso = inverter(anagrama);
  //verificando se a palavra recebida e o inverso são iguais
  if (anagrama == reverso) {
    print("Um anagrama de $anagrama pode formar um palíndromo: $reverso. Afirmação: True");
  } else {
    print("Um anagrama de $anagrama é $reverso, portanto não pode formar um palíndromo. Afirmação: False");
  }
}

//funçao para inverter a ordem das letras da palavra
String inverter(String palavra) {
  return palavra.split("").reversed.join();
}
