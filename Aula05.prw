#INCLUDE "TOTVS.CH"

/* Escopos, Definindo limites das variáveis, vem pode enxergar e alterar dependendo de sua declaração */

Static nStati := 1

user function VARS2()

  Local nNum1 := 10000
  Local nNum2 := 2.2
  
  Private cPrivate := "Privado"
  
  Public __cPublic := 'a' // Toda variÃ¡vel public se inicia com "__" para nÃ£o se confundir com o sistema de fontes. 
         __cPublic := "B"
         __cPublic := 'Arroz'

  // Chama a funÃ§Ã£o statica
  TestEscop(nNum1, @nNum2) // @ Faz referÃªncia a variÃ¡vel, diz que foi chamada e nÃ£o iniciada. 
 
return

static function TestEscop(nValor1, nValor2)

  Local __cPublic := "Alterei" // VariÃ¡vel que era public virou Local, pois usou o mesmo nome.
  DEFAULT nValor1 := 0

  // Alterando conteudo da variÃ¡vel
  nValor2 := 10

  // Motra conteÃºdo da variÃ¡vel PRIVATE
  MsgAlert("Private: " + cPrivate) // Leitura da variÃ¡vel PRIVATE FORA DA FUNÃ‡ÃƒO DECLARADA

  // Mostra na tela a variÃ¡vel local que alterou/sobreescreveu a publica.
  MsgAlert("PÃºblica: "+ __cPublic)

  // Passa um valor recebido de parametro da funÃ§Ã£o static
  MsgAlert(nValor2)

  // Mostra na tela uma var declarada fora de funÃ§Ã£o, funciona em todas as funÃ§Ãµes
  MsgAlert("VariÃ¡vel Static: " + CValToChar(nStati)) 

  // Alterar valor da variÃ¡vel static
  nStati := 2 // Da para alterar.

  // Alterando valor da variÃ¡vel private
  cPrivate := "Alterado"

return
