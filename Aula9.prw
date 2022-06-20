#INCLUDE "TOTVS.CH"

//ESTRUTURA de repetição FOR
user function ESTRUFOR() 

  Local nCount
  Local nNum := 0

  // Para de 0 a 4 faça, Some o valor de nCount nele mesmo, repita.
  for nCount := 0 to 4

    nNum += nCount
    // 0 + 0 = 0
    // 0 + 1 = 1
    // 1 + 2 = 3
    // 3 + 3 = 6
    // 6 + 4 = 10 e Acabar o For
    
  next

  MsgAlert("Valor depois do For1: " + CValToChar(nNum))

  nNum := 0 // Reseta o valor do nNum para nova contagem

  // Para de 0 a 4, de 2 em 2 faça, soma a var nNum a ela mesma, repita
  for nCount := 0 to 4 step 2 // Incrementa 2 a cada next

    nNum += nCount
    // 0 + 0 = 0
    // 0 + 2 = 2
    // 2 + 4 = 6 Acabar o For
    
  next

  MsgAlert("Valor depois do For2: " + CValToChar(nNum))

RETURN
