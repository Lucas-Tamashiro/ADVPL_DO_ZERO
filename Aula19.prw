#INCLUDE "TOTVS.CH"

// PROGRAMA DE ATUALIZA��O, Telas customizadas para inser��o, leitura, altera��o, exclus�o
user function MODELO1_() 

  // Modelo 1 ou AxCadastro padr�o da TOTVS
  // Utiliza-se para criar rapidamento uma tela para o usu�rio cadastrar os itens.

  Local cAlias  := "SB1"
  Local cTitulo := "Cadastro - AxCadastro"
  Local cVldExc := ".T." // Permite exclus�o de itens.
  Local cVldAlt := ".T." // Permite altera��o de itens.

  AxCadastro(cAlias, cTitulo, cVldExc, cVldAlt)

return

  // N�o � muito recomendado utilizar o modelo 2.
