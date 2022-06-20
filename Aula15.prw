#INCLUDE "TOTVS.CH"

// BANCO DE DADOS 02
user function BANCO02() 

  /*  Varrer a tabela a procura de um dado utilizando posicione.
   *  DBSETORDERNICKNAME(Nick) Selecionar o �ndice a ser usado com o nickname
   */

    Local aArea  := SB1->(GetArea()) // Inicia a Tabela.

      DbSelectArea("SB1") // Seleciona a Tabela para leitura.
      SB1 -> (DbSetOrder(1))       // Define o �ndice Filial+Cod
      SB1 -> (DBGOTOP())           // Vai pro primeiro registro da tabela.

      // Cria uma String pegando o Valor de uma posi��o espec�fica, com a fun��o posicione.
      cMsg := Posicione(  'SB1'                   ,; // Alias -> Tabela
                          1                      ,; // n� �ndice
                          FWXFilial('SB1') + "2" ,; // Busca o registro, com base no �ndice
                          'B1_DESC'                ) // Coluna da informa��o pedida.

      MsgAlert("Mensagem com Posicione: " + cMsg)

    RestArea(aArea) // Finaliza a Tabela.

return
