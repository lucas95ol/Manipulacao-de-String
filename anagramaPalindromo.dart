import 'dart:io';

void main() {
  print("Digite uma palavra para saber se um anagrama dela formará um palíndromo:");
  String anagrama = stdin.readLineSync()!;
  anagrama = anagrama.toLowerCase();
  String reverso = reverter(anagrama);

  if (anagrama == reverso) {
    print("Um anagrama de $anagrama pode formar um palíndromo: $reverso. Afirmação: True");
  } else {
    print("Um anagrama de $anagrama é $reverso, portanto não pode formar um palíndromo. Afirmação: False");
  }
}

String reverter(String palavra) {
  return palavra.split("").reversed.join();
}
