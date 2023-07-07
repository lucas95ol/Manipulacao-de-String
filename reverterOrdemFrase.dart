import 'dart:io';

void main() {
  print("Digite uma frase e irei inverter a ordem das palavras:");
  String frase = stdin.readLineSync()!;
  var palavras = frase.split(" ");
  var palavrasInvertidas = palavras.reversed;

  print(palavrasInvertidas.join(" "));
}
