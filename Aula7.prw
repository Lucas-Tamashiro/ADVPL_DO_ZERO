#INCLUDE "TOTVS.CH"

/* Estrutura de condi��o IF, IFELSE, ELSE */
user function ESTRUTUR() //Estruturas dentro do ADVPL

  Local nNum1 := 22
  Local nNum2 := 100
  // Se o N� 1 for igual ao N� 2, fa�a
  if (nNum1 = nNum2)

    MsgInfo("A vari�vel nNum1 � igual a vari�vel nNum2")

  // Se n�o. se, o n�1 for maior que o n� 2, fa�a
  elseif nNum1 > nNum2

    MsgInfo("A vari�vel nNum1 � maior a vari�vel nNum2")

  // Se n�o, fa�a
  else

    MsgAlert("A vari�vel nNum1 � diferente da vari�vel nNum2")

  endif

return
