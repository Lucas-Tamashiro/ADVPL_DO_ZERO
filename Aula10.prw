#INCLUDE "TOTVS.CH"

/* Estrutura de repeti��o Do While */
user function WHILE()

  Local nNum1 := 0
  Local nNum2 := 10
  Local nX := 1
  Local cNome := "RCTI"
  

  // While comum
  while nNum1 < nNum2 // Ir� parar o loop quando nNum1 == nNum2
      
    nNum1++ // Soma 1 a ao valor da vari�vel

  end

    MsgAlert(nNum1 + nNum2) // Soma tem de dar 20, depois do loop.

  // while com Do - Certifica que o loop faz ao menos 1 volta sempre.
  /*
  Do while condition

  enddo
  */

 // Local nX := 11 N�o se pode criar vari�vel local depois de estruturas. 

  // Estrutura While complexa, com If E .AND.
  while nX != 10 .AND. cNome != "PROTEUS"
    nX++
      // Estrutura IF dentro do While
      if nX == 5
        cNome := "PROTEUS"
      endif

  end

    MsgAlert("Numero: " + CValToChar(nX))
    MsgAlert("Nome: " + cNome)

    // Resetando os valores das vari�veis
    nX := 1
    cNome := ""

    // Estrutura While complexa, com If e .OR.
  while nX != 10 .OR. cNome != "PROTEUS"
    nX++
      // Estrutura IF dentro do While
      if nX == 5
        cNome := "PROTEUS"
      endif

  end
  
    MsgAlert("Numero: " + CValToChar(nX))
    MsgAlert("Nome: " + cNome)


return
