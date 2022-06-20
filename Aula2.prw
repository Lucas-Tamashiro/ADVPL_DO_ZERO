#INCLUDE "TOTVS.CH"

// Algorítimo - Sequência finita de passos de lógica para chegar a um objetivo.

// Somentea TOTVS tem permissão para desenvolver uma função FUNCTION
FUNCTION Teste1() // 10 CARACTERES NO MAXIMO
  MsgAlert("Oi")
RETURN

USER FUNCTION Teste2() // Definir os nomes das variáveis até 8 caracteres pois o U_ contam como 2
  MsgAlert("Oi") 
RETURN

STATIC FUNCTION Teste3() // Usada para separar funções dentro do mesmo fonte, arquivo, código
  MsgAlert("Oi")         // Caso queira chamar a função de outro arquivo deve-se chamar uma User function.
RETURN

 // Também é restrita pela totvs
MAIN FUNCTION SIGAADV() // Responsável por adicionar no smart client.
  MsgAlert("Oi")
RETURN
