#INCLUDE "TOTVS.CH"

// MBrowse, permite manupilar rotinas de CRUD, inser��o, altera��o, exclus�o etc.
user function MBRW00() 

  Local   cAlias    := "SB1" // Tabela produtos
  Private cCadastro := "Cadastro Produtos MBrowse" // Precisa ser o cCadastro o nome do t�tulo, para que n�o de erro nos bot�es
  Private aRotina   := {}

  // Somente visual, n�o tem funcionalidade, pois n�o tem cCadastro.
    aADD(aRotina, {"Pesquisar",  "AxPesqui",    0, 1})
    aADD(aRotina, {"Visualizar", "AxVisual",    0, 2})
    aADD(aRotina, {"Inserir",    "AxInclui",    0, 3})
    aADD(aRotina, {"Alterar",    "AxAltera",    0, 4})
    aADD(aRotina, {"Excluir",    "AxDeleta",    0, 5})
    //aADD(aRotina, {"OlaMundo",   "U_OLAMUNDO",  0, 6})
  
  DbSelectArea(cAlias) // Seleciona a Tabela para apresenta��o dos dados
  DbSetOrder(1)        // Index para apresenta��o dos dados
  MBrowse(,,,,cAlias)  // Inicia um campo de dados passando a tabela

return
