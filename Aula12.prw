#INCLUDE "TOTVS.CH"

/* Manipulando Arrays*/
user function VETORES() 

  /*  AADD()   - Adiciona no Array
      AINS()   - Deixa nulo a posi��o indicada
      ACLONE() - Realiza a c�pia de array para outro.
      ADEL()   - Exclui 1 elemento do array, tornando o �ltimo valor NULL
      ASIZE()  - Redefine a estrutura de um array, adiciona ou remove
      LEN()    - Retorna a quantidade de elementos de um Array
  */  

Local aVetor := {10,20,30}
Local aVetor2 := {}
Local nCount

  Aadd(aVetor, 40) // adiciona um valor em uma nova posi��o do array
  MsgAlert(Len(aVetor)) // Mostra n� de posi��es do Array

  AINS(aVetor, 2 ) // Define como nulo a posi��o definida.
  aVetor[2] := 200 // Adciona na posi��o 2 o valor exibido.
  MsgAlert(aVetor[2]) 
  MsgAlert(aVetor[3]) 
  MsgAlert(Len(aVetor)) // Mostra n� de posi��es do Array

  aVetor2 := ACLONE( aVetor ) // Copia o vetor para um novo.

    for nCount := 1 to Len(aVetor2)
      MsgAlert(aVetor2[nCount])
    next nCount

  ADEL( aVetor2, 3 ) // Exclui o valor na posi��o indicada deixando a �ltima posi��o nula, n�o muda.

  ASIZE( aVetor2, 2 ) // Define o tamanho do array, cortando/ jogando fora os valores das posi��es al�m da especificada.
  MsgAlert(Len(aVetor2))

return
