#INCLUDE "TOTVS.CH"

// BANCO DE DADOS 01
user function BANCO01() 

  /* ADVPL Acessa o banco de dados SQL SERVER.
   * -> Faz referência a algo
   * Exercício de trazer na tela um campo específico da tabela de Prdotuos, Codigo 2, Descrição: PROD2
   */

    Local aArea  := SB1->(GetArea()) // Inicia a Tabela.

      DBSELECTAREA("SB1")  // Seleciona a tabela SB1
      DBSETORDER(1)        // Define o índice de amostragem 1, padrão, sendo ela (Filial + B1_COD)
      DBGOTOP()            // Seleciona para o primeiro registro da tabela.

      // Procura um registro com base no índice 1 da tabela.
      if (DBSEEK(FWXFILIAL("SB1") + "2")) // FWXFILIAL - Pega a filial correspondente a tabela, "2" é o Código.
        // Aparece na tela PROD 2, Nome da descrição do produto de código 2 da tabela de produtos.
        MsgAlert(B1_DESC,'Descrição do Produto') // Apresenta a mensagem passando o campo da descrição da tabela do registro selecionado.
        
      endif
    
    RestArea(aArea) // Finaliza a Tabela.

return
