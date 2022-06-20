#INCLUDE "TOTVS.CH"

  /* Teste de Degub */
user function DEBUG01()

  Local cAlias := "SB1"           // Vari�vel para definir o Alias/ Tabela a ser trabalhada
  Local nCount := 0               // Vari�vel para contar o n�mero de posi��es/ registros da tabela
  Local aDados := {}              // Vetor para armazenamento de alguns dados da tabela
  Local aArea := GetArea(cAlias)  // Define o espa�o a ser trabalhado
    
  DbSelectArea(cAlias)    // Seleciona a tabela para manipula��o
  SB1 -> (DbSetOrder(1))  // Define o �ndice da tabela, forma de apresenta��o dos dados
  SB1 -> (DBGOTOP())      // Seleciona o primeiro registro

  // Enquanto n�o chegar ao final da tabela/ �ltimo registro, fa�a
  While !SB1 -> (EOF())
    Aadd(aDados,{SB1 -> B1_COD,;  // Adiciona os valores de codigo e decri��o no vetor aDados
                 SB1 -> B1_DESC})
    nCount++                      // Incrementa 1 ao valor de nCount
    SB1 -> (DbSkip())             // Pula para o pr�ximo registro da tabela/Alias

  EndDo

  // Mensagem informando o n�mero de registros encontrados
  MsgAlert("Quantidade de Produtos encontrada: <b>" + cValToChar(nCount))
  // Zerando o valor da vari�vel nCount
  nCount := 0
  // Restaura a �rea que estava sendo utilizada
  RestArea(aArea)

return
