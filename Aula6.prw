#INCLUDE "TOTVS.CH"

// Operadores
user function OPERAMATE() 

  /*
  Private nNum1 := 20 // Private - N�o � vis�vel em outras fun��es USER function, somente em static al�m da fun��o atual.
  Private nNum2 := 10
  */
  
  // Operadores matem�ticos
  Static nNum1 := 20 // Vis�vel em outras fun��es user.
  Static nNum2 := 10
  
  MsgAlert(nNum1 + nNum2)
  MsgAlert(nNum1 - nNum2)
  MsgAlert(nNum1 * nNum2)
  MsgAlert(nNum1 / nNum2) 
  MsgAlert(nNum1 % nNum2) // Resto da divis�o

return

user function OPERAREL() // Operadores relacionais

  MsgAlert(nNum1 < nNum2) // Menor

  MsgAlert(nNum1 > nNum2) // Maior
  // Em outras linguagens o igual � receber, no ADVPL � o := 
  MsgAlert(nNum1 = nNum2) // Compara se � igual

  MsgAlert(nNum1 == nNum2) // Exatamente igual, usado mais para compara��o de caracteres

  MsgAlert(nNum1 <= nNum2) // Menor igual

  MsgAlert(nNum1 >= nNum2) // Maior igual

  MsgAlert(nNum1 != nNum2) // Diferente

return

user function OPERATRI() // Operadores de atribui��o

  nNum1 := 10 // Atribui��o simples
  nNum1 += nNum2 // nNum1 = nNum1 + nNum2
  nNum1 -= nNum2 // nNum1 = nNum1 - nNum2
  nNum1 *= nNum2 // nNum1 = nNum1 * nNum2
  nNum1 /= nNum2 // nNum1 = nNum1 / nNum2
  // Da erro
  //nNum1 %= nNum2 // nNum1 = nNum1 % nNum2 

return

