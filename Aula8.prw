#INCLUDE "TOTVS.CH"

/* Estrutura de condição Do case */
user function DOCASE() // Caso de uso, caso for tal condição, faça. 

  Local cData := "25/12/2022"

  // Faça caso,
  Do Case
    // Caso Data igual a 20/12/2022, faça
    Case cData == "20/12/2022"
    MsgAlert("Não é Natal!" + cData)
    // Caso data for esta, faça
    Case cData == "25/12/2022"
    MsgAlert("É Natal")
    // Caso contrário, faça
    OTHERWISE
    MsgAlert("Não sei qual dia é hoje!")

  EndCase

return
