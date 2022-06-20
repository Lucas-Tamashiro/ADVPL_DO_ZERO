#INCLUDE "TOTVS.CH"

// PROGRAMA DE ATUALIZAÇÃO, Telas customizadas para inserção, leitura, alteração, exclusão
user function MODELO1_() 

  // Modelo 1 ou AxCadastro padrão da TOTVS
  // Utiliza-se para criar rapidamento uma tela para o usuário cadastrar os itens.

  Local cAlias  := "SB1"
  Local cTitulo := "Cadastro - AxCadastro"
  Local cVldExc := ".T." // Permite exclusão de itens.
  Local cVldAlt := ".T." // Permite alteração de itens.

  AxCadastro(cAlias, cTitulo, cVldExc, cVldAlt)

return

  // Não é muito recomendado utilizar o modelo 2.
