#INCLUDE "TOTVS.CH"

// BANCO DE DADOS 02
user function BANCO02() 

  /*  Varrer a tabela a procura de um dado utilizando posicione.
   *  DBSETORDERNICKNAME(Nick) Selecionar o índice a ser usado com o nickname
   */

    Local aArea  := SB1->(GetArea()) // Inicia a Tabela.

      DbSelectArea("SB1") // Seleciona a Tabela para leitura.
      SB1 -> (DbSetOrder(1))       // Define o índice Filial+Cod
      SB1 -> (DBGOTOP())           // Vai pro primeiro registro da tabela.

      // Cria uma String pegando o Valor de uma posição específica, com a função posicione.
      cMsg := Posicione(  'SB1'                   ,; // Alias -> Tabela
                          1                      ,; // nº índice
                          FWXFilial('SB1') + "2" ,; // Busca o registro, com base no índice
                          'B1_DESC'                ) // Coluna da informação pedida.

      MsgAlert("Mensagem com Posicione: " + cMsg)

    RestArea(aArea) // Finaliza a Tabela.

return
