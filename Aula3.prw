#INCLUDE "TOTVS.CH"

/* Vari�veis, tipos de declara��o */

user function VARS()
  // N, N�m�ricos, Inteiros, reais etc.
  Local nNum := 10000
        nNum := 2.2
  // L L�gico, equivalente ao Boolean, sim ou n�o
  Local lLogico := .T.
        lLogico := .F.
  // C, caractere e String textos, pode usar aspas simples ou duplas
  Local cCaractere := 'a'
        cCaractere := "B"
        cCaractere := 'Arroz'
  // D, Tipo data, tem uma m�scara de data.
  Local dData := DATE() // Vem em forma de MM/DD/YY, necess�rio alterar.
  // A, Array, pode ser vetor ou matriz, armazena diferentes tipos de dados em um mesmo array.
  Local aVetor := {"Valor1", "Valor2", "Valor3"} // Vetores iniciam o �ndice em 1.

  // Bloco de c�digo � uma vari�vel que armazena N comandos inline.
  Local bBlocoCod := {|| nValor := 1, MsgAlert("Valor � igual a: " + CValToChar(nValor),)} // Necess�rio converter valor N para C no alertMsg

    MsgAlert(nNum)
    MsgAlert(lLogico)
    MsgAlert(cCaractere)
    MsgAlert(dData)
    MsgAlert(aVetor[1])
    //MsgAlert(bBlocoCod) N�o funciona
    EVAL( bBlocoCod)

return
