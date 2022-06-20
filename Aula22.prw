#INCLUDE "TOTVS.CH"

   /* SIGA CFG CONFIGURADOR - Valida��o e Perguntas do sistema, Inclus�o de gatilhos em produtos do sistema, inclus�o de regrase        
    * em par�metros dosistema, Criar Tebelas e campos.
    * 
    * Pontos de Entrada: User Function com a finalidade de interagir com uma rotina padr�o da aplica��o ERP.
    * - Complementar uma valida��o realizada pela aplica��o;
    * - Complementar as atualiza��es realizadas pelo processamento em tabelas padr�es do ERP
    * - Implementar a atualiza��o de tabelas espec�ficas durante o processamento de uma rotina padr�o do ERP
    * - Executar uma a��o sem processos de atualiza��es, mas que necessite utilizar as informa��es atuais do ambiente, durante
    *   o processamento da rotina padr�o para determinar as caracter�sticas do processo 
    * - Substituir um processamento padr�o do sistema, por uma regra espec�fica do cliente, no qual o mesmo ser� implementado.
    */

    // Pontos de entrada: Utilize sempre GetArea() e RestArea()

// Exerc�cio pontos de entrada
user function A010TOK() // Nome do ponto de entrada q ser manipulado
// Valida��o para inclus�o/Altera��o do Produto
  
  /* 
  Exerc�cio n�o permitir inclus�o de produtos do tipo "PA" com a conta cont�bil "001".
  */

  Local lExecuta := .T.                   // Vari�vel que retorna do ponto de entrada A010TOK.
  Local cTipo    := AllTrim(M->B1_TIPO)   // AllTrim ignora os campos de espa�o
  local cDesc   := AllTrim(M->B1_DESC)  // M -> Mem�ria, pega o que est� sendo executado do campo.

    // Checa a regra de neg�cio do cliente, caso seja "PA" com o n� da conta "001"
    if cTipo == "PA" .AND. cDesc == "TESTE"
      // Utilizando tags HTML nos textos de caixa de info/ alert etc, alguns comandos: <b>, <i>
      MsgAlert("A Descri��o <b> " + cDesc + "</b> n�o pode estar associada a um produto do tipo <b>" + cTipo)
      // Passa o valor falso, para n�o prosseguir caso a condi��o acima for True
      lExecuta := .F.

    endif

return (lExecuta) // Retorna o lExecuta
// Ao dar a mensagem de alerta desta fun��o, aparece uma msginfo em branco.


