#INCLUDE "TOTVS.CH"

// MBrowse, permite manupilar rotinas de CRUD, inserção, alteração, exclusão etc.
user function MBRW001()

  Local   cAlias     := "SA2" // Tabela Fornecedores
  Local   aCores     := {}    // Array de cores para legendas
  Local   cFiltra    := "A2_FILIAL == '"+xFilial('SA2')+"' .AND. A2_EST == 'SP' "
  Private cCadastro  := "Cadastro MBROWSE"
  Private aRotina    := {}
  Private aIndexSA2  := {}
  Private bFiltraBrw := {|| FilBrowse(cAlias, @aIndexSA2, @cFiltra)} //Filbrowse -  Enche o browse com as informações

    // Adiciona a Rotina de botôes/Funções na aRotina
    aAdd(aRotina, {"Pesquisar",  "AxPesqui",     0, 1})
    aAdd(aRotina, {"Visualizar", "AxVisual",     0, 2})
    aAdd(aRotina, {"Inserir",    "U_BInclui",    0, 3})
    aAdd(aRotina, {"Alterar",    "U_BAltera",    0, 4})
    aAdd(aRotina, {"Excluir",    "U_BDeleta",    0, 5})
    aAdd(aRotina, {"Legenda",    "U_BLegenda",   0, 6})

    // Adiciona no vertor aCores LEGENDAS: 
    aAdd(aCores, {"A2_TIPO == 'F'" , "BR_VERDE"   }) // Física
    aAdd(aCores, {"A2_TIPO == 'J'" , "BR_AMARELO" }) // Jurídica
    aAdd(aCores, {"A2_TIPO == 'X'" , "BR_LARANJA" }) // Exportação
    aAdd(aCores, {"A2_TIPO == 'R'" , "BR_MARROM"  }) // Rural
    aAdd(aCores, {"Empty(A2_TIPO)" , "BR_PRETO"   }) // Não classificado/ Vazio

  // Seleciona a Tabela para apresentação dos dados
  DbSelectArea(cAlias)
  // Index para apresentação dos dados
  DbSetOrder(1)
  // Inicia um campo de dados passando a tabela, Cores das legendas e parametros de px inicial, final, comprimento altura.
  MBrowse(6,1,22,75,cAlias,,,,,,aCores)
  // Roda o Bloco de código com o
  Eval(bFiltraBrw)
  // Posiciona no Primeiro registro.
  dbGoTop()
  // Termina de inclir no Browse
  EndFillBrw(cAlias, aIndexSA2)

return
/*--------------------------------------
        FUNÇÃO BInclui - Inclusão
---------------------------------------*/
user function BInclui(cAlias, nReg, nOpc) // Passa como parâmetro banco, nRegistro(Chave da Tabela) e nOp(Opção de 1 a N, opções AxAltera etc.)
  // Inicia uma var Local nOpcao, recebe AxInclui
  Local nOpcao := 0
  nOpcao := AxInclui(cAlias, nReg, nOpc)
    if nOpcao == 1 // Se passou o valor 1 é porque deu certo
      MsgInfo("Inclusão efetuada com sucesso!")
    else
      MsgAlert("Inclusão Cancelada!") 
    endif

return
/*--------------------------------------
        FUNÇÃO BAltera - Alteração
---------------------------------------*/
user function BAltera(cAlias, nReg, nOpc)

  Local nOpcao := 0
  nOpcao := AxAltera(cAlias, nReg, nOpc)
    if nOpcao == 1
      MsgInfo("Alteração efetuada com sucesso!")
    else
      MsgAlert("Alteração Cancelada!")
    endif

return
/*--------------------------------------
        FUNÇÃO BExclusão - Exclusão
---------------------------------------*/
user function BDeleta(cAlias, nReg, nOpc)

  Local nOpcao := 0
  nOpcao := AxDeleta(cAlias, nReg, nOpc)
    if nOpcao == 1
      MsgAlert("Exclusão Cancelada!") // Tive que trocar a ordem de mensagem dos ifs
    else
      MsgInfo("Exclusão efetuada com sucesso!")
    endif

return
/*--------------------------------------
        FUNÇÃO BLegenda - Legenda
---------------------------------------*/
user function BLegenda()
  // Vetor aLegenda, inserir as legendas disponíveis
  local aLegenda := {}
  // Adicionando os bitmaps e descrição de cada legenda no array matriz.
  aAdd(aLegenda, {"BR_VERDE"  , "Pessoa Física"     })
  aAdd(aLegenda, {"BR_AMARELO", "Pessoa Jurídica"   })
  aAdd(aLegenda, {"BR_LARANJA", "Exportação"        })
  aAdd(aLegenda, {"BR_MARROM" , "Fornecedor Rural"  })
  aAdd(aLegenda, {"BR_PRETO"  , "Não Classificado"  })

  // Função que apresenta as legendas em outras opções, passando um título e Array das legendas adicionadas
  BrwLegenda(cCadastro, "Legenda", aLegenda) 

return
