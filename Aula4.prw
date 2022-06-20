#INCLUDE "TOTVS.CH"

/*
user function VARIA

  // Quando a variável não é declarada no escopo, virá PRIVATE, ex:
  nNum := 1 // Variável private

  // Visíveis no código fonte onde foram declaradas.
  Local teste    
  // Pode ser declarada tanto dentro tanto fora da função
  Static teste2  
  // Visível em todo programa, depois destruida ao finalizar de rodar o programa, ou quando se chama uma var de mesmo nome com outro valor.
  Private teste3 
  // Visível em todo programa até ser sobreescrita por uma Private de mesmo nome.
  PUBLIC teste4 // Não é recomendado utilizar, visivel em todo o programa, pode causar erros.

return
*/
