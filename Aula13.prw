#INCLUDE "TOTVS.CH"

/* Bloco de código, como utilizar*/
user function BLOCO() 

  //Bloco de código Função Inline, 
  Local bBloco := {|| MsgAlert("Olá, Mundo!",)} // "||" passa algum parâmetro dentro dele.
  EVAL( bBloco)

  // Passagem por parâmetro, Code Block.
  local bBloco2 := {|cMsg| MsgAlert(cMsg, )}
  Eval(bBloco2, "Olá, Mundo2!") // Essa mensagem é gravada na variável entre os pipes, ou seja, a var que está sendo passada por parâmetro.

return
