#INCLUDE "TOTVS.CH"

   /* SIGA CFG CONFIGURADOR - Validação e Perguntas do sistema, Inclusão de gatilhos em produtos do sistema, inclusão de regrase        
    * em parâmetros dosistema, Criar Tebelas e campos.
    * 
    * Pontos de Entrada: User Function com a finalidade de interagir com uma rotina padrão da aplicação ERP.
    * - Complementar uma validação realizada pela aplicação;
    * - Complementar as atualizações realizadas pelo processamento em tabelas padrões do ERP
    * - Implementar a atualização de tabelas específicas durante o processamento de uma rotina padrão do ERP
    * - Executar uma ação sem processos de atualizações, mas que necessite utilizar as informações atuais do ambiente, durante
    *   o processamento da rotina padrão para determinar as características do processo 
    * - Substituir um processamento padrão do sistema, por uma regra específica do cliente, no qual o mesmo será implementado.
    */

    // Pontos de entrada: Utilize sempre GetArea() e RestArea()

// Exercício pontos de entrada
user function A010TOK() // Nome do ponto de entrada q ser manipulado
// Validação para inclusão/Alteração do Produto
  
  /* 
  Exercício não permitir inclusão de produtos do tipo "PA" com a conta contábil "001".
  */

  Local lExecuta := .T.                   // Variável que retorna do ponto de entrada A010TOK.
  Local cTipo    := AllTrim(M->B1_TIPO)   // AllTrim ignora os campos de espaço
  local cDesc   := AllTrim(M->B1_DESC)  // M -> Memória, pega o que está sendo executado do campo.

    // Checa a regra de negócio do cliente, caso seja "PA" com o nº da conta "001"
    if cTipo == "PA" .AND. cDesc == "TESTE"
      // Utilizando tags HTML nos textos de caixa de info/ alert etc, alguns comandos: <b>, <i>
      MsgAlert("A Descrição <b> " + cDesc + "</b> não pode estar associada a um produto do tipo <b>" + cTipo)
      // Passa o valor falso, para não prosseguir caso a condição acima for True
      lExecuta := .F.

    endif

return (lExecuta) // Retorna o lExecuta
// Ao dar a mensagem de alerta desta função, aparece uma msginfo em branco.


