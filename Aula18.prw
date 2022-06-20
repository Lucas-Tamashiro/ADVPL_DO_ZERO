#INCLUDE "TOTVS.CH"

// BANCO DE DADOS 05
user function BANCO05() 

  /* 
   *  Manipulando dados com MSEXECAUTO
   *  Permite manipulação de mais de uma tabela em 1 único código
   */ 

  // Cria/pega uma área de trabalho/atual
  aArea := GetArea() // Joga o valor em um array aArea
    Local aDados := {} // Cria um array para inserção dos dados.
    Private lMSErroAuto := .F. // Variável de erro, caso de erro no MSEXECAUTO, automaticamente ela muda para .T.

    // Alimenta a matriz com os dados para inserção.
    aDados := {; // Nome_Campo, Valor, Retorno
                {"B1_COD",     "111",          Nil},;  
                {"B1_DESC",	   "PROD TESTE",   Nil},;
                {"B1_TIPO",	   "GG",           Nil},;
                {"B1_UM",		   "PC",           Nil},; 
                {"B1_LOCPAD",  "1",            Nil},;
                {"B1_IPI",		   0,            Nil},;
                {"B1_CONTRAT", "N",            Nil},;	
                {"B1_LOCALIZ", "N",            Nil};
              }

      // Inicia a transação, e evita erros no processo com o disarmtransaction
      Begin Transaction // Boas Práticas
        // Executa o MSExecAuto passando o array e o tipo de execução.
        MSExecAuto({| x,y | MATA010(x,y)}, aDados, 3) // 3- Inserção, 4- Alteração, 5 Exclusão

        // Verfica se o MSExecAuto ocorreu algum erro com a variável lógica padrão dele.
        if lMSErroAuto
          // Caso tenha dado erro
          MsgAlert("Ocorreu um erro!")
          MostraErro() // Função do sistema, que mostra o erro obtido pelo MSExecAuto
          DisarmTransaction() // Desarma a transação/manipulação do banco
        else
          // Caso não de erro
          MsgInfo("Dados inseridos com sucesso!")
        endif
      // Finaliza transação realizada
      End Transaction   
    // Desapega da área de trabalho.
    RestArea(aArea)

return
