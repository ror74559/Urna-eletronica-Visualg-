algoritmo "UrnaEletronica"
// Fun��o :
// Autor :
// Data : 28/09/2019
// Se��o de Declara��es 
var
   i,j,senha,eleitores,voto,h,r,b,n,confirma,ba,bi,mo,jo,bv,nv,maiorVer,cont:inteiro
   empateVer: vetor[1..4] de caractere
   //eleitores: vari�vel contadora de eleitores
   //empateVer: vari�vel para armazenar o vereador mais votado ou os vereadores mais votados, quando houver empate
   //cont: vari�vel para indicar empate entre os vereadores
   //j: vari�vel para o �ndice do vetor empateVer
  // i:vari�vel que inicia ou encerra a vota��o
  // senha: vari�vel para inicializar o sistema da urna
  // voto: vari�vel que ir� registrar a op��o do eleitor
  // h : vari�vel que ir� computar os votos para o prefeito Hebert
  // r : vari�vel que ir� computar os votos para o prefeito Ribeiro
  // b : vari�vel que ir� computar os votos em branco para prefeito
  // n : vari�vel que ir� computar os votos nulos para prefeito
  // confirma: vari�vel que dar� prosseguimento � vota��o confirmando o voto do eleitor
  // ba: vari�vel que ir� computar os votos para o vereador Barone
  // bi: vari�vel que ir� computar os votos para o vereador Bidu
  // mo: vari�vel que ir� computar os votos para o vereador Monteiro
  // jo: vari�vel que ir� computar os votos para o vereador Jo�o Fera
  // bv: vari�vel que ir� computar os votos em branco para vereador
  // nv: vari�vel que ir� computar os votos nulos para vereador
  //maiorVer: vari�vel que ir� registrar o vereador mais votado
inicio
enquanto (senha<>1505) faca
         escreval("Digite a senha para inicializar o sistema: " )
         leia (senha)
         se (senha<>1505)entao
            escreval("Senha Incorreta")
         fimse
fimenquanto
repita
      escreval("------------------------------------------")
      escreval("             Urna Eletr�nica")
      escreval("------------------------------------------")
      escreval("1 - Para iniciar a vota��o")
      escreval("0 - para encerrar a vota��o")
      leia(i)
      se (i =1) entao
         eleitores <- eleitores + 1
         escreval("------------------------------------------")
         escreval("Candidatos a Prefeito:")
         escreval("Herbert - n�mero 90")
         escreval("Ribeiro - n�mero 95")
         escreval("VOTO BRANCO - 01")
         escreval("VOTO NULO - 00")
         escreval("------------------------------------------")
         escreval()
         repita
               repita
                     escreval("Digite seu voto: ")
                     leia(voto)
                     escreval("Deseja confirmar o voto?")
                     escreval(" 1 - Para SIM")
                     escreval(" 0 - Para N�O")
                     leia (confirma)
               ate (confirma =1)
               se (voto<>90)e (voto<>95)e (voto<>01)e (voto<>00)entao
                  escreval("voto inv�lido")
               fimse
         ate (voto=90)ou (voto=95)ou (voto=01)ou (voto=00)
         escolha voto
              caso 90
                   h<-h+1
              caso 95
                   r<-r+1
              caso 01
                   b<-b+1
              caso 00
                   n<-n+1
         fimescolha
       //--------------------------------------------------------------------
       
       escreval("------------------------------------------")
         escreval("Candidatos a Vereador:")
         escreval("Barone - n�mero 90000")
         escreval("Bidu - n�mero 90999")
         escreval("Monteiro - n�mero 95000")
         escreval("Jo�o Fera - n�mero 95999")
         escreval("VOTO BRANCO - 02")
         escreval("VOTO NULO - 03")
         escreval("------------------------------------------")
         escreval()
         repita
               repita
                     escreval("Digite seu voto: ")
                     leia(voto)
                     escreval("Deseja confirmar o voto?")
                     escreval(" 1 - Para SIM")
                     escreval(" 0 - Para N�O")
                     leia (confirma)
               ate (confirma =1)
               se (voto<>90000)e (voto<>90999)e (voto<>95000)e (voto<>95999) e (voto <>02) e (voto <>03) entao
                  escreval("voto inv�lido")
               fimse
         ate (voto=90000)ou (voto=90999)ou (voto=95000)ou(voto=95999) ou (voto =02) ou (voto =03)
         escolha voto
              caso 90000
                   ba<-ba+1
              caso 90999
                   bi<-bi+1
              caso 95000
                   mo<-mo+1
              caso 95999
                   jo<-jo+1
              caso 02
                   bv<-bv+1
              caso 03
                   nv<-nv+1
         fimescolha
            
         
         escreval("")
         escreval("")
     fimse
     escreval("**************** F I M *******************")
ate (i=0)

escreval("_________________________________________")
 escreval("               Totaliza��o                            ")
 escreval("------------------------------------------")
 escreval("Candidados a Prefeito ")
 escreval("N�mero de votos de Hebert : ",h)
 escreval("N�mero de votos de Ribeiro: ",r)
 escreval("N�mero de votos em branco: ",b)
 escreval("N�mero de votos nulos: ",n)
  escreval("------------------------------------------")
    se (h<>r) entao
       se (h>r) entao
        escreval("Prefeito eleito: Herbert")
         senao
              escreval("Prefeito eleito: Ribeiro")
        fimse
    senao
         se h<>0 entao
            se r<>0 entao
               escreval("Houve empate")
            fimse
         fimse
         
    fimse
 escreval("------------------------------------------")
 escreval("Candidatos a Vereador")
 escreval("N�mero de votos de Barone: ",ba)
 escreval("N�mero de votos de Bidu: ",bi)
 escreval("N�mero de votos de Monteiro: ",mo)
 escreval("N�mero de votos de Jo�o Fera: ",jo)
 escreval("N�mero de votos em branco: ",bv)
 escreval("N�mero de votos nulos: ",nv)
  escreval("------------------------------------------")
 maiorVer<-ba
  se (maiorVer<bi) entao
     maiorVer<-bi
  fimse
  se (maiorVer< mo) entao
     maiorVer<-mo
  fimse
  se (maiorVer<jo) entao
     maiorVer<-jo
  fimse
  se (maiorVer<>0) entao
     se (maiorVer = ba)entao
         empateVer[1] <- "Barone"
          cont <-cont + 1
     fimse
     se (maiorVer = bi)entao
        empateVer[2] <- "Bidu"
        cont <-cont + 1
     fimse
     se (maiorVer = mo)entao
        empateVer[3] <- "Monteiro"
        cont <-cont + 1
      fimse
     se (maiorVer = jo)entao
        empateVer[4] <- "Jo�o Fera"
        cont <-cont + 1
     fimse
   fimse
  
  se (cont = 1) entao
     escreva("O vereador mais votado foi " )
     para j de 1 ate 4 faca
          escreva (empateVer[j])
     fimpara
      escreval("")
  fimse
  se (cont > 1) entao
     escreval("Houve empate entre os vereadores mais votados:  " )
     para j de 1 ate 4 faca
          se (empateVer[j] <> "") entao
             escreval (empateVer[j])
          fimse
     fimpara
      escreval("")
  fimse
 escreval("------------------------------------------")
  
 escreval("Quantidade de eleitores:",eleitores)
 
 escreval("------------------------------------------")
fimalgoritmo
