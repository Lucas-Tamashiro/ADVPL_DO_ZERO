#INCLUDE "TOTVS.CH"

// BANCO DE DADOS 01
user function BANCO01() 

  /* ADVPL Acessa o banco de dados SQL SERVER.
   * -> Faz refer�ncia a algo
   * Exerc�cio de trazer na tela um campo espec�fico da tabela de Prdotuos, Codigo 2, Descri��o: PROD2
   */

    Local aArea  := SB1->(GetArea()) // Inicia a Tabela.

      DBSELECTAREA("SB1")  // Seleciona a tabela SB1
      DBSETORDER(1)        // Define o �ndice de amostragem 1, padr�o, sendo ela (Filial + B1_COD)
      DBGOTOP()            // Seleciona para o primeiro registro da tabela.

      // Procura um registro com base no �ndice 1 da tabela.
      if (DBSEEK(FWXFILIAL("SB1") + "2")) // FWXFILIAL - Pega a filial correspondente a tabela, "2" � o C�digo.
        // Aparece na tela PROD 2, Nome da descri��o do produto de c�digo 2 da tabela de produtos.
        MsgAlert(B1_DESC,'Descri��o do Produto') // Apresenta a mensagem passando o campo da descri��o da tabela do registro selecionado.
        
      endif
    
    RestArea(aArea) // Finaliza a Tabela.

return
