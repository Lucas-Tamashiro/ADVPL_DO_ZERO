#INCLUDE "TOTVS.CH"

/* Arrays */
user function ARRAYS() 

  // N�o se limita a um tipo de dado
  Local dData := DATE()
  Local aValores := {"Jo�o", dData, 100} // Array com v�rias tipos de dados dentro.

  MsgAlert(aValores[2]) // Exibe a posi��o 2 do Array
  MsgAlert(aValores[3]) // posi��o 3

  // N�o precisa se preocupar com os tipos de dados do array, ele aceita v�rios dentro do mesmo.

return
