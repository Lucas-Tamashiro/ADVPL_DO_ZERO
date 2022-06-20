#INCLUDE "TOTVS.CH"
#INCLUDE "TopConn.ch"  // Necessário para realizar a Query com comando SQL

// BANCO DE DADOS 03
user function BANCO03() 

  /* Usando o TCQuery para leitura de dados. 
   *  
   * 
   */

  Local aArea  := SB1->(GetArea()) // Inicia a Tabela.
  Local aDados := {}
  Local cQuery := ""
  Local nCount := 0

    cQuery := " SELECT "                        // Inicia o Select
    cQuery += " B1_COD AS CODIGO,"               // Passa as colunas com os nomes a mostrar.
    cQuery += " B1_DESC AS DESCRICAO"            
    cQuery += " FROM"                          // Inicia o From
    cQuery += " SB1990"   // Passa a tabela a ser executado o select, RETSQLNAME utiliza-se quando não está em cliente.
    cQuery += " WHERE "                         // Inicia o Where
    cQuery += " B1_AFAMAD != '1'; "              // Passa a condição do where

    // Executando o select acima com TCQuery
    TCQuery cQuery New Alias "TMP" // Inicia o TCQuery, passa o String com a query, instância uma tabela temporária de nome "TMP" = Temporaria

    // Passa os dados obtidos no SELECT pela tabela Temporária para um Vetor
    while !TMP->(EOF()) // Inicia o While e passa condição, enquanto não chegar ao final da tabela/arquivo, faça
      Aadd(aDados, TMP -> CODIGO)     // Adiciona o Valor do campo codigo
      Aadd(aDados, TMP -> DESCRICAO)  // Adiciona o Valor do campo Descrição
      TMP->(DBSKIP())                 // Pula para o próxima registro.
    end

    MsgAlert(Len(aDados)) // Mostra na tela o tamanho do array aDados após inserção dos dados.

    // Mostra na tela os dados do array aDados
    for nCount := 1 to Len(aDados)
      MsgAlert(aDados[nCount]) // Mostra os todos os valores de cada posição do Array aDados
    next nCount // Incrementa 1 na variável nCount

  RestArea(aArea) // Finaliza a Tabela.


return
