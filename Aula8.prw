#INCLUDE "TOTVS.CH"

/* Estrutura de condi��o Do case */
user function DOCASE() // Caso de uso, caso for tal condi��o, fa�a. 

  Local cData := "25/12/2022"

  // Fa�a caso,
  Do Case
    // Caso Data igual a 20/12/2022, fa�a
    Case cData == "20/12/2022"
    MsgAlert("N�o � Natal!" + cData)
    // Caso data for esta, fa�a
    Case cData == "25/12/2022"
    MsgAlert("� Natal")
    // Caso contr�rio, fa�a
    OTHERWISE
    MsgAlert("N�o sei qual dia � hoje!")

  EndCase

return
