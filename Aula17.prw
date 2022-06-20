#INCLUDE "TOTVS.CH"

// BANCO DE DADOS 04
user function BANCO04() 

  /* RecLock, Alterando registros de tabelas pelo c�digo fonte ADVPL.
  *  N�o � recomendado utilizar o RecLock Para alterar registros.
  */

    Local aArea := GetArea("SB1") // Inicia Tabela
    Local cAlteracao // Vari�vel para gravar o valor do campo ap�s altera��o

    DbSelectArea("SB1")     // Seleciona a Tabela para uso
      SB1 -> (DbSetOrder(1))  // Define o �ndice 1, Filial + Codigo
      SB1 -> (DbGoTop())      // Vai para o primeiro registro/linha da tabela

    // Iniciar transa��o
    BEGIN Transaction

      MsgAlert("A descri��o ser� alterada")

      // Altera o campo descri��o e grava o valor em uma vari�vel ap�s altera��o.
      if SB1->(DbSeek(FWXFilial("SB1")+"2"))  // Faz uma pesquisa do registro 2
        RecLock("SB1", .F.)                   // Trava a tabela para altera��o, Inclus�o seria com .T. no par�metro
          SB1 -> B1_DESC := "TESTE"         // Altera o campo descri��o do registro selecionado.
          //Replace B1_DESC With "TESTE2"  // Outra forma de alterar valor, usando REPLACE 
          cAlteracao := SB1 -> B1_DESC      // Grava na vari�vel o valor ap�s altera��o
        SB1->(MsUnlock())                   // Destrava a tabela
      endif
      // Exibe o nome do campo ap�s altera��o
      MsgAlert(cAlteracao)
      // DisarmTransaction() // Utilizando o RecLock, pode-se passar o Disarm para n�o validar o que foi passado dentro do reclock

    // Finaliza transa��o
    END Transaction

      RestArea(aArea) // Finaliza a Tabela

return
