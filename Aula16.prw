#INCLUDE "TOTVS.CH"
#INCLUDE "TopConn.ch"  // Necess�rio para realizar a Query com comando SQL

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
    cQuery += " SB1990"   // Passa a tabela a ser executado o select, RETSQLNAME utiliza-se quando n�o est� em cliente.
    cQuery += " WHERE "                         // Inicia o Where
    cQuery += " B1_AFAMAD != '1'; "              // Passa a condi��o do where

    // Executando o select acima com TCQuery
    TCQuery cQuery New Alias "TMP" // Inicia o TCQuery, passa o String com a query, inst�ncia uma tabela tempor�ria de nome "TMP" = Temporaria

    // Passa os dados obtidos no SELECT pela tabela Tempor�ria para um Vetor
    while !TMP->(EOF()) // Inicia o While e passa condi��o, enquanto n�o chegar ao final da tabela/arquivo, fa�a
      Aadd(aDados, TMP -> CODIGO)     // Adiciona o Valor do campo codigo
      Aadd(aDados, TMP -> DESCRICAO)  // Adiciona o Valor do campo Descri��o
      TMP->(DBSKIP())                 // Pula para o pr�xima registro.
    end

    MsgAlert(Len(aDados)) // Mostra na tela o tamanho do array aDados ap�s inser��o dos dados.

    // Mostra na tela os dados do array aDados
    for nCount := 1 to Len(aDados)
      MsgAlert(aDados[nCount]) // Mostra os todos os valores de cada posi��o do Array aDados
    next nCount // Incrementa 1 na vari�vel nCount

  RestArea(aArea) // Finaliza a Tabela.


return
