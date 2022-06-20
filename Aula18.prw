#INCLUDE "TOTVS.CH"

// BANCO DE DADOS 05
user function BANCO05() 

  /* 
   *  Manipulando dados com MSEXECAUTO
   *  Permite manipula��o de mais de uma tabela em 1 �nico c�digo
   */ 

  // Cria/pega uma �rea de trabalho/atual
  aArea := GetArea() // Joga o valor em um array aArea
    Local aDados := {} // Cria um array para inser��o dos dados.
    Private lMSErroAuto := .F. // Vari�vel de erro, caso de erro no MSEXECAUTO, automaticamente ela muda para .T.

    // Alimenta a matriz com os dados para inser��o.
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

      // Inicia a transa��o, e evita erros no processo com o disarmtransaction
      Begin Transaction // Boas Pr�ticas
        // Executa o MSExecAuto passando o array e o tipo de execu��o.
        MSExecAuto({| x,y | MATA010(x,y)}, aDados, 3) // 3- Inser��o, 4- Altera��o, 5 Exclus�o

        // Verfica se o MSExecAuto ocorreu algum erro com a vari�vel l�gica padr�o dele.
        if lMSErroAuto
          // Caso tenha dado erro
          MsgAlert("Ocorreu um erro!")
          MostraErro() // Fun��o do sistema, que mostra o erro obtido pelo MSExecAuto
          DisarmTransaction() // Desarma a transa��o/manipula��o do banco
        else
          // Caso n�o de erro
          MsgInfo("Dados inseridos com sucesso!")
        endif
      // Finaliza transa��o realizada
      End Transaction   
    // Desapega da �rea de trabalho.
    RestArea(aArea)

return
