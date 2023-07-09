import 'dart:io';

void main() {
  print("Digite uma frase e irei inverter a ordem das palavras:");
  //input para receber a frase
  String frase = stdin.readLineSync()!;
  //lista para guardar as palavras da frase de forma separada
  var palavras = frase.split(" ");
  //lista que inverte a ordem das palavras
  var palavrasInvertidas = palavras.reversed;
  //imprimindo os elementos da segunda lista em forma de frase
  print(palavrasInvertidas.join(" "));
}
