#INCLUDE "TOTVS.CH"

/* Manipulando Arrays*/
user function VETORES() 

  /*  AADD()   - Adiciona no Array
      AINS()   - Deixa nulo a posição indicada
      ACLONE() - Realiza a cópia de array para outro.
      ADEL()   - Exclui 1 elemento do array, tornando o último valor NULL
      ASIZE()  - Redefine a estrutura de um array, adiciona ou remove
      LEN()    - Retorna a quantidade de elementos de um Array
  */  

Local aVetor := {10,20,30}
Local aVetor2 := {}
Local nCount

  Aadd(aVetor, 40) // adiciona um valor em uma nova posição do array
  MsgAlert(Len(aVetor)) // Mostra nº de posições do Array

  AINS(aVetor, 2 ) // Define como nulo a posição definida.
  aVetor[2] := 200 // Adciona na posição 2 o valor exibido.
  MsgAlert(aVetor[2]) 
  MsgAlert(aVetor[3]) 
  MsgAlert(Len(aVetor)) // Mostra nº de posições do Array

  aVetor2 := ACLONE( aVetor ) // Copia o vetor para um novo.

    for nCount := 1 to Len(aVetor2)
      MsgAlert(aVetor2[nCount])
    next nCount

  ADEL( aVetor2, 3 ) // Exclui o valor na posição indicada deixando a última posição nula, não muda.

  ASIZE( aVetor2, 2 ) // Define o tamanho do array, cortando/ jogando fora os valores das posições além da especificada.
  MsgAlert(Len(aVetor2))

return
