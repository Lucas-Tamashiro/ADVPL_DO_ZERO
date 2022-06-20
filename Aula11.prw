#INCLUDE "TOTVS.CH"

/* Arrays */
user function ARRAYS() 

  // Não se limita a um tipo de dado
  Local dData := DATE()
  Local aValores := {"João", dData, 100} // Array com várias tipos de dados dentro.

  MsgAlert(aValores[2]) // Exibe a posição 2 do Array
  MsgAlert(aValores[3]) // posição 3

  // Não precisa se preocupar com os tipos de dados do array, ele aceita vários dentro do mesmo.

return
