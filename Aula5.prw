#INCLUDE "TOTVS.CH"

/* Escopos, Definindo limites das vari�veis, vem pode enxergar e alterar dependendo de sua declara��o */

Static nStati := 1

user function VARS2()

  Local nNum1 := 10000
  Local nNum2 := 2.2
  
  Private cPrivate := "Privado"
  
  Public __cPublic := 'a' // Toda variável public se inicia com "__" para não se confundir com o sistema de fontes. 
         __cPublic := "B"
         __cPublic := 'Arroz'

  // Chama a função statica
  TestEscop(nNum1, @nNum2) // @ Faz referência a variável, diz que foi chamada e não iniciada. 
 
return

static function TestEscop(nValor1, nValor2)

  Local __cPublic := "Alterei" // Variável que era public virou Local, pois usou o mesmo nome.
  DEFAULT nValor1 := 0

  // Alterando conteudo da variável
  nValor2 := 10

  // Motra conteúdo da variável PRIVATE
  MsgAlert("Private: " + cPrivate) // Leitura da variável PRIVATE FORA DA FUNÇÃO DECLARADA

  // Mostra na tela a variável local que alterou/sobreescreveu a publica.
  MsgAlert("Pública: "+ __cPublic)

  // Passa um valor recebido de parametro da função static
  MsgAlert(nValor2)

  // Mostra na tela uma var declarada fora de função, funciona em todas as funções
  MsgAlert("Variável Static: " + CValToChar(nStati)) 

  // Alterar valor da variável static
  nStati := 2 // Da para alterar.

  // Alterando valor da variável private
  cPrivate := "Alterado"

return
