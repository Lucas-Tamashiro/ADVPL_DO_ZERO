#INCLUDE "TOTVS.CH"

/* Bloco de c�digo, como utilizar*/
user function BLOCO() 

  //Bloco de c�digo Fun��o Inline, 
  Local bBloco := {|| MsgAlert("Ol�, Mundo!",)} // "||" passa algum par�metro dentro dele.
  EVAL( bBloco)

  // Passagem por par�metro, Code Block.
  local bBloco2 := {|cMsg| MsgAlert(cMsg, )}
  Eval(bBloco2, "Ol�, Mundo2!") // Essa mensagem � gravada na vari�vel entre os pipes, ou seja, a var que est� sendo passada por par�metro.

return
