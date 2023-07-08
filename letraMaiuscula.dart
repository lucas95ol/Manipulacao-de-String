import 'dart:io';

void main(List<String> args) {
  print(
      "Escreva um parágrafo com letras minúsculas e o algoritmo irá corrigir o tamanho das letras:");
  String frase = stdin.readLineSync()!;

  frase = frase.replaceFirst(frase[0], frase[0].toUpperCase());

  for (int i = 0; i < frase.length; i++) {
    if (frase[i] == "." && i + 2 < frase.length ||
        frase[i] == "?" && i + 2 < frase.length ||
        frase[i] == "!" && i + 2 < frase.length ||
        frase[i] == ";" && i + 2 < frase.length) {
      //frase = frase.replaceFirst(frase[i], frase[i].toUpperCase());
      frase = frase.replaceRange(i + 2, i + 3, frase[i + 2].toUpperCase());
    }
  }
  print(frase);
}
