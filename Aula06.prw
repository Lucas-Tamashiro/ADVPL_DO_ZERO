#INCLUDE "TOTVS.CH"

// Operadores
user function OPERAMATE() 

  /*
  Private nNum1 := 20 // Private - Não é visível em outras funções USER function, somente em static além da função atual.
  Private nNum2 := 10
  */
  
  // Operadores matemáticos
  Static nNum1 := 20 // Visível em outras funções user.
  Static nNum2 := 10
  
  MsgAlert(nNum1 + nNum2)
  MsgAlert(nNum1 - nNum2)
  MsgAlert(nNum1 * nNum2)
  MsgAlert(nNum1 / nNum2) 
  MsgAlert(nNum1 % nNum2) // Resto da divisão

return

user function OPERAREL() // Operadores relacionais

  MsgAlert(nNum1 < nNum2) // Menor

  MsgAlert(nNum1 > nNum2) // Maior
  // Em outras linguagens o igual é receber, no ADVPL é o := 
  MsgAlert(nNum1 = nNum2) // Compara se é igual

  MsgAlert(nNum1 == nNum2) // Exatamente igual, usado mais para comparação de caracteres

  MsgAlert(nNum1 <= nNum2) // Menor igual

  MsgAlert(nNum1 >= nNum2) // Maior igual

  MsgAlert(nNum1 != nNum2) // Diferente

return

user function OPERATRI() // Operadores de atribuição

  nNum1 := 10 // Atribuição simples
  nNum1 += nNum2 // nNum1 = nNum1 + nNum2
  nNum1 -= nNum2 // nNum1 = nNum1 - nNum2
  nNum1 *= nNum2 // nNum1 = nNum1 * nNum2
  nNum1 /= nNum2 // nNum1 = nNum1 / nNum2
  // Da erro
  //nNum1 %= nNum2 // nNum1 = nNum1 % nNum2 

return

