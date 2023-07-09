void main() {
  String texto = "Hello World";
  var letras = texto.split("");
  var semRepeticao = Set.from(letras);

  String novoTexto = semRepeticao.join();

  print(novoTexto);
}
