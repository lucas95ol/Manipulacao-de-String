import 'dart:io';

void main() {
  print(
      "Escreva um parágrafo com letras minúsculas e o algoritmo irá corrigir o tamanho das letras:");
  //input para receber o paragrafo    
  String frase = stdin.readLineSync()!;
  //substituindo a primeira letra digitada por ela mesmo maiuscula
  frase = frase.replaceFirst(frase[0], frase[0].toUpperCase());
  //laço para percorrer os elementos da frase
  for (int i = 0; i < frase.length; i++) {
    //verificando onde começa uma nova frase dentro do paragrafo
    if (frase[i] == "." && i + 2 < frase.length ||
        frase[i] == "?" && i + 2 < frase.length ||
        frase[i] == "!" && i + 2 < frase.length ||
        frase[i] == ";" && i + 2 < frase.length) {
      //se houver pontuação e mais alguma letra depois dela, substitua a letra por ela mesmo maiuscula  
      frase = frase.replaceRange(i + 2, i + 3, frase[i + 2].toUpperCase());
    }
  }
  print(frase);
}
