#INCLUDE "TOTVS.CH"

// Algor�timo - Sequ�ncia finita de passos de l�gica para chegar a um objetivo.

// Somentea TOTVS tem permiss�o para desenvolver uma fun��o FUNCTION
FUNCTION Teste1() // 10 CARACTERES NO MAXIMO
  MsgAlert("Oi")
RETURN

USER FUNCTION Teste2() // Definir os nomes das vari�veis at� 8 caracteres pois o U_ contam como 2
  MsgAlert("Oi") 
RETURN

STATIC FUNCTION Teste3() // Usada para separar fun��es dentro do mesmo fonte, arquivo, c�digo
  MsgAlert("Oi")         // Caso queira chamar a fun��o de outro arquivo deve-se chamar uma User function.
RETURN

 // Tamb�m � restrita pela totvs
MAIN FUNCTION SIGAADV() // Respons�vel por adicionar no smart client.
  MsgAlert("Oi")
RETURN
