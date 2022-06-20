#INCLUDE "TOTVS.CH"

/* Estrutura de condição IF, IFELSE, ELSE */
user function ESTRUTUR() //Estruturas dentro do ADVPL

  Local nNum1 := 22
  Local nNum2 := 100
  // Se o Nº 1 for igual ao Nº 2, faça
  if (nNum1 = nNum2)

    MsgInfo("A variável nNum1 é igual a variável nNum2")

  // Se não. se, o nº1 for maior que o nº 2, faça
  elseif nNum1 > nNum2

    MsgInfo("A variável nNum1 é maior a variável nNum2")

  // Se não, faça
  else

    MsgAlert("A variável nNum1 é diferente da variável nNum2")

  endif

return
