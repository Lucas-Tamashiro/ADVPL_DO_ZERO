#INCLUDE "TOTVS.CH"

  /* Teste de Degub */
user function DEBUG01()

  Local cAlias := "SB1"           // Variável para definir o Alias/ Tabela a ser trabalhada
  Local nCount := 0               // Variável para contar o número de posições/ registros da tabela
  Local aDados := {}              // Vetor para armazenamento de alguns dados da tabela
  Local aArea := GetArea(cAlias)  // Define o espaço a ser trabalhado
    
  DbSelectArea(cAlias)    // Seleciona a tabela para manipulação
  SB1 -> (DbSetOrder(1))  // Define o índice da tabela, forma de apresentação dos dados
  SB1 -> (DBGOTOP())      // Seleciona o primeiro registro

  // Enquanto não chegar ao final da tabela/ último registro, faça
  While !SB1 -> (EOF())
    Aadd(aDados,{SB1 -> B1_COD,;  // Adiciona os valores de codigo e decrição no vetor aDados
                 SB1 -> B1_DESC})
    nCount++                      // Incrementa 1 ao valor de nCount
    SB1 -> (DbSkip())             // Pula para o próximo registro da tabela/Alias

  EndDo

  // Mensagem informando o número de registros encontrados
  MsgAlert("Quantidade de Produtos encontrada: <b>" + cValToChar(nCount))
  // Zerando o valor da variável nCount
  nCount := 0
  // Restaura a área que estava sendo utilizada
  RestArea(aArea)

return
