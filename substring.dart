void main() {
  String texto =
      "String Palíndromo definição: Uma palavra é dita palindroma quando possui o mesmo significado da esquerda para a direita ou da direita para a esquerda.";

  //separando cada palavra colocando-as em um array
  var palavras = texto.split(" ");

  //definindo uma variável que guardará a maior substring palindroma encontrada
  String maiorPalindromo = "";

  //laço para lidar separadamente com cada item do array "palavra" 
  for (int i = 0; i < palavras.length; i++) {
    //item do array palavra
    var palindromo = palavras[i];

    //alterando a sequencia do item para possibilitar a comparação
    var reverso = reverter(palavras[i]);

    //um segundo laço para comparar as substrings
    for (int j = 0; j < palindromo.length; j++) {
      //verificando se as substrings são iguais
      if (palindromo.substring(j, palindromo.length) ==
          reverso.substring(0, reverso.length - j)) {
        //guardando a substring palindroma numa variavel
        var auxiliar = palindromo.substring(j, palindromo.length);
        //verificando se a substring encontrada é maior que o tamanho da string "maiorPalindromo"
        if (auxiliar.length > maiorPalindromo.length) {
          //a variavel "maiorPalindromo" é atualizada com a maior substring palindroma atualizada
          maiorPalindromo = auxiliar;
        }
      }
    }
  }

  //imprimindo o resultado
  print("A maior substring palindroma encontrada foi: $maiorPalindromo");
}

//função para inverter a ordem das letras em uma palavra
String reverter(String palavra) {
  return palavra.split("").reversed.join();
}
