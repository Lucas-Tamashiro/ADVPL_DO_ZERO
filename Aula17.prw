#INCLUDE "TOTVS.CH"

// BANCO DE DADOS 04
user function BANCO04() 

  /* RecLock, Alterando registros de tabelas pelo código fonte ADVPL.
  *  Não é recomendado utilizar o RecLock Para alterar registros.
  */

    Local aArea := GetArea("SB1") // Inicia Tabela
    Local cAlteracao // Variável para gravar o valor do campo após alteração

    DbSelectArea("SB1")     // Seleciona a Tabela para uso
      SB1 -> (DbSetOrder(1))  // Define o índice 1, Filial + Codigo
      SB1 -> (DbGoTop())      // Vai para o primeiro registro/linha da tabela

    // Iniciar transação
    BEGIN Transaction

      MsgAlert("A descrição será alterada")

      // Altera o campo descrição e grava o valor em uma variável após alteração.
      if SB1->(DbSeek(FWXFilial("SB1")+"2"))  // Faz uma pesquisa do registro 2
        RecLock("SB1", .F.)                   // Trava a tabela para alteração, Inclusão seria com .T. no parâmetro
          SB1 -> B1_DESC := "TESTE"         // Altera o campo descrição do registro selecionado.
          //Replace B1_DESC With "TESTE2"  // Outra forma de alterar valor, usando REPLACE 
          cAlteracao := SB1 -> B1_DESC      // Grava na variável o valor após alteração
        SB1->(MsUnlock())                   // Destrava a tabela
      endif
      // Exibe o nome do campo após alteração
      MsgAlert(cAlteracao)
      // DisarmTransaction() // Utilizando o RecLock, pode-se passar o Disarm para não validar o que foi passado dentro do reclock

    // Finaliza transação
    END Transaction

      RestArea(aArea) // Finaliza a Tabela

return
