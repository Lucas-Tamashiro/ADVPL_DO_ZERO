#INCLUDE "TOTVS.CH"

// MBrowse, permite manupilar rotinas de CRUD, inser��o, altera��o, exclus�o etc.
user function MBRW001()

  Local   cAlias     := "SA2" // Tabela Fornecedores
  Local   aCores     := {}    // Array de cores para legendas
  Local   cFiltra    := "A2_FILIAL == '"+xFilial('SA2')+"' .AND. A2_EST == 'SP' "
  Private cCadastro  := "Cadastro MBROWSE"
  Private aRotina    := {}
  Private aIndexSA2  := {}
  Private bFiltraBrw := {|| FilBrowse(cAlias, @aIndexSA2, @cFiltra)} //Filbrowse -  Enche o browse com as informa��es

    // Adiciona a Rotina de bot�es/Fun��es na aRotina
    aAdd(aRotina, {"Pesquisar",  "AxPesqui",     0, 1})
    aAdd(aRotina, {"Visualizar", "AxVisual",     0, 2})
    aAdd(aRotina, {"Inserir",    "U_BInclui",    0, 3})
    aAdd(aRotina, {"Alterar",    "U_BAltera",    0, 4})
    aAdd(aRotina, {"Excluir",    "U_BDeleta",    0, 5})
    aAdd(aRotina, {"Legenda",    "U_BLegenda",   0, 6})

    // Adiciona no vertor aCores LEGENDAS: 
    aAdd(aCores, {"A2_TIPO == 'F'" , "BR_VERDE"   }) // F�sica
    aAdd(aCores, {"A2_TIPO == 'J'" , "BR_AMARELO" }) // Jur�dica
    aAdd(aCores, {"A2_TIPO == 'X'" , "BR_LARANJA" }) // Exporta��o
    aAdd(aCores, {"A2_TIPO == 'R'" , "BR_MARROM"  }) // Rural
    aAdd(aCores, {"Empty(A2_TIPO)" , "BR_PRETO"   }) // N�o classificado/ Vazio

  // Seleciona a Tabela para apresenta��o dos dados
  DbSelectArea(cAlias)
  // Index para apresenta��o dos dados
  DbSetOrder(1)
  // Inicia um campo de dados passando a tabela, Cores das legendas e parametros de px inicial, final, comprimento altura.
  MBrowse(6,1,22,75,cAlias,,,,,,aCores)
  // Roda o Bloco de c�digo com o
  Eval(bFiltraBrw)
  // Posiciona no Primeiro registro.
  dbGoTop()
  // Termina de inclir no Browse
  EndFillBrw(cAlias, aIndexSA2)

return
/*--------------------------------------
        FUN��O BInclui - Inclus�o
---------------------------------------*/
user function BInclui(cAlias, nReg, nOpc) // Passa como par�metro banco, nRegistro(Chave da Tabela) e nOp(Op��o de 1 a N, op��es AxAltera etc.)
  // Inicia uma var Local nOpcao, recebe AxInclui
  Local nOpcao := 0
  nOpcao := AxInclui(cAlias, nReg, nOpc)
    if nOpcao == 1 // Se passou o valor 1 � porque deu certo
      MsgInfo("Inclus�o efetuada com sucesso!")
    else
      MsgAlert("Inclus�o Cancelada!") 
    endif

return
/*--------------------------------------
        FUN��O BAltera - Altera��o
---------------------------------------*/
user function BAltera(cAlias, nReg, nOpc)

  Local nOpcao := 0
  nOpcao := AxAltera(cAlias, nReg, nOpc)
    if nOpcao == 1
      MsgInfo("Altera��o efetuada com sucesso!")
    else
      MsgAlert("Altera��o Cancelada!")
    endif

return
/*--------------------------------------
        FUN��O BExclus�o - Exclus�o
---------------------------------------*/
user function BDeleta(cAlias, nReg, nOpc)

  Local nOpcao := 0
  nOpcao := AxDeleta(cAlias, nReg, nOpc)
    if nOpcao == 1
      MsgAlert("Exclus�o Cancelada!") // Tive que trocar a ordem de mensagem dos ifs
    else
      MsgInfo("Exclus�o efetuada com sucesso!")
    endif

return
/*--------------------------------------
        FUN��O BLegenda - Legenda
---------------------------------------*/
user function BLegenda()
  // Vetor aLegenda, inserir as legendas dispon�veis
  local aLegenda := {}
  // Adicionando os bitmaps e descri��o de cada legenda no array matriz.
  aAdd(aLegenda, {"BR_VERDE"  , "Pessoa F�sica"     })
  aAdd(aLegenda, {"BR_AMARELO", "Pessoa Jur�dica"   })
  aAdd(aLegenda, {"BR_LARANJA", "Exporta��o"        })
  aAdd(aLegenda, {"BR_MARROM" , "Fornecedor Rural"  })
  aAdd(aLegenda, {"BR_PRETO"  , "N�o Classificado"  })

  // Fun��o que apresenta as legendas em outras op��es, passando um t�tulo e Array das legendas adicionadas
  BrwLegenda(cCadastro, "Legenda", aLegenda) 

return
