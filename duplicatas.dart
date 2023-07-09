void main() {
  String texto = "Hello World";
  //guardando os elementos do texto em uma lista
  var letras = texto.split("");
  //criando outra lista onde os elementos repetidos da lista anterior foram apagados
  var semRepeticao = Set.from(letras);
  //agora junto os elementos dessa nova lista para formar o novo texto
  String novoTexto = semRepeticao.join();

  print(novoTexto);
}
