#INCLUDE "TOTVS.CH"

/* Variáveis, tipos de declaração */

user function VARS()
  // N, Núméricos, Inteiros, reais etc.
  Local nNum := 10000
        nNum := 2.2
  // L Lógico, equivalente ao Boolean, sim ou não
  Local lLogico := .T.
        lLogico := .F.
  // C, caractere e String textos, pode usar aspas simples ou duplas
  Local cCaractere := 'a'
        cCaractere := "B"
        cCaractere := 'Arroz'
  // D, Tipo data, tem uma máscara de data.
  Local dData := DATE() // Vem em forma de MM/DD/YY, necessário alterar.
  // A, Array, pode ser vetor ou matriz, armazena diferentes tipos de dados em um mesmo array.
  Local aVetor := {"Valor1", "Valor2", "Valor3"} // Vetores iniciam o índice em 1.

  // Bloco de código é uma variável que armazena N comandos inline.
  Local bBlocoCod := {|| nValor := 1, MsgAlert("Valor é igual a: " + CValToChar(nValor),)} // Necessário converter valor N para C no alertMsg

    MsgAlert(nNum)
    MsgAlert(lLogico)
    MsgAlert(cCaractere)
    MsgAlert(dData)
    MsgAlert(aVetor[1])
    //MsgAlert(bBlocoCod) Não funciona
    EVAL( bBlocoCod)

return
