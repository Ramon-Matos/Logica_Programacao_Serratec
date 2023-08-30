programa
{
    inclua biblioteca Matematica
    inclua biblioteca Tipos
    inclua biblioteca Util


    const inteiro NUM_ALUNOS = 5
    cadeia nome, mes, turma, nota1, nota2, nota3, matriz[NUM_ALUNOS][6], simNao, resposta
    real vetor[NUM_ALUNOS]
    inteiro cont1 = 0, cont2 = 0
    real cont_nota = 0.0, media_classificada = 0.0




    funcao inicio(){
        escreva("Login Efetuado!")
        escreva("\nCadastre os alunos(a) no sistema: \n\n")
        cadastro()
        limpa()
        escolha_tarefa()    
    }




    funcao vazio cadastro(){ //QUESTÃO 1 - Função para inserir os dados do usuário.
        para(inteiro i=0; i<NUM_ALUNOS; i++){
            para(inteiro j=0; j<6; j++){
                se(j == 0){
                    cadastro_nome(matriz, i)
                }
                senao se(j == 1){
                    cadastro_mes(matriz, i)
                }
                senao se(j == 2){
                    cadastro_turma(matriz, i)
                }
                senao se(j == 3){
                    cadastro_nota1(matriz, i)
                }
                senao se(j == 4){
                    cadastro_nota2(matriz, i)
                }
                senao{
                    cadastro_nota3(matriz, i)
                }  
            }
           
        }
















    }








    funcao vazio cadastro_nome(cadeia &mat[][], inteiro i){ //QUESTÃO 1 - Input de inserção do nome
        escreva("Nome do(a) ",i+1,"º", " Aluno(a)? ")
        leia(nome)
        enquanto(nome == ""){
            escreva("Nome inválido. Tente Novamente.\n\nNome do(a) ",i+1,"º", " Aluno(a)? ")
            leia(nome)
        }
        inteiro c = 0
        para(inteiro j = 0; j <= i; j++)
        {
            se(matriz[j][0] == nome)
              c++
        }
        se(c == 0){
            matriz[i][0] = nome
        }
        senao
        {
            escreva("Nome já cadastrado. Tente Novamente.\n\n")
            cadastro_nome(mat, i)
        }
    }








    funcao vazio cadastro_mes(cadeia &mat[][], inteiro i){ //QUESTÃO 1 - Input de cadastrar o mês
        escreva("Mês de Nascimento do(a) Aluno(a): [Digite o número correspondente ao mês (1-12)]: ")
                    leia(mes)
                    se(mes != ""){
                                       
                    inteiro m = Tipos.cadeia_para_inteiro(mes, 10)
                   
                    se(m >= 1 e m <= 12){
                        matriz[i][1] = mes
                    }
                    senao{
                        escreva("Mês inválido. Tente Novamente.\n\n")
                        cadastro_mes(mat, i)
                    }
                }senao{
                    escreva("Mês inválido. Tente Novamente.\n\n")
                    cadastro_mes(mat, i)
                }
    }








    funcao vazio cadastro_turma(cadeia &mat[][], inteiro i){//QUESTÃO 1 - Input de colocar a turma
        escreva("Turma do(a) Aluno(a)? [101/102]: ")
                    leia(turma)
                    se(turma == "101" ou turma == "102"){
                        matriz[i][2] = turma
                    }          
                    senao{
                        escreva("Turma inválida. Tente Novamente.\n\n")
                        cadastro_turma(mat, i)
                    }
    }








    funcao vazio cadastro_nota1(cadeia &mat[][], inteiro i){ //QUESTÃO 1 - Input 1ª Nota
        escreva("1ª nota do(a) Aluno(a)? ")
                    leia(nota1)
                    se (nota1 != ""){
                    real n1 = Tipos.cadeia_para_real(nota1)
                    se(n1 >= 0.0 e n1 <= 10.0)
                        matriz[i][3] = nota1
                    senao{
                        escreva("Nota inválida. Tente Novamente.\n\n")
                        cadastro_nota1(mat, i)
                    }
                    }senao{
                          escreva("Nota inválida. Tente Novamente.\n\n")
                        cadastro_nota1(mat, i)
                    }
    }












    funcao vazio cadastro_nota2(cadeia &mat[][], inteiro i){ //QUESTÃO 1 - Input 2ª Nota
        escreva("2ª nota do(a) Aluno(a)? ")
                    leia(nota2)
                    se (nota2 != ""){
                    real n2 = Tipos.cadeia_para_real(nota2)
                    se(n2 >= 0.0 e n2 <= 10.0)
                        matriz[i][4] = nota2
                    senao{
                        escreva("Nota inválida. Tente Novamente.\n\n")
                        cadastro_nota2(mat, i)
                    }
                    }senao{
                          escreva("Nota inválida. Tente Novamente.\n\n")
                        cadastro_nota2(mat, i)
                    }
    }








    funcao vazio cadastro_nota3(cadeia &mat[][], inteiro i){ //QUESTÃO 1 - Input 3ª Nota
        escreva("3ª nota do(a) Aluno(a)? ")
                    leia(nota3)
                    se (nota3 != ""){
                    real n3 = Tipos.cadeia_para_real(nota3)
                    se(n3 >= 0.0 e n3 <= 10.0){
                        matriz[i][5] = nota3
                        limpa()
                    }senao{
                        escreva("Nota inválida. Tente Novamente.\n\n")
                        cadastro_nota3(mat, i)
                    }
                    }senao{
                          escreva("Nota inválida. Tente Novamente.\n\n")
                        cadastro_nota3(mat, i)
                    }
    }








    funcao vazio escolha_tarefa(){ //Menu Principal + QUESTÃO 5
        limpa()
        escreva("O que deseja?\n[1] Exibir relatório na ordem de cadastro. \n[2] Exibir relatório em ordem decrecente de médias. \n[3] Exibir a média da turma e sua classificação. \n[4] Exibir a média e classificação de um aluno. \n[5] Exibir mural aniversario.  \n[6] Editar Cadastro. \n[7] Finalizar Programa.\n")
        leia(resposta)




        se(resposta != ""){


        //Condição que o usuário insere.
        se(resposta == "1"){
            limpa()
            escreva("Alunos cadastrados: \n\n")
            exibir_dados_geral()
            querContinuar()
        }
        senao se(resposta == "2"){
            limpa()
            escreva("Alunos cadastrados: \n\n")
            exibir_dados_em_ordem()
            querContinuar()
        }
        senao se(resposta == "3"){
            limpa()
            media_turma(cont1, cont2)
            querContinuar()
        }
        senao se(resposta == "4"){
            limpa()
            situacao_aluno()
            querContinuar()
        }
        senao se(resposta == "5"){
            limpa()
            muralAniversario()
            querContinuar()
        }
        senao se(resposta == "6"){
            limpa()
            edita_aluno(matriz)
            querContinuar()
        }
        senao se(resposta == "7"){
            escreva("\n         FIM\n") //QUESTÃO 5 - Finalizar o Programa.
        }
        senao{
            limpa()
            escreva("Caracter digitado inválido. Tente novamente.")
            escolha_tarefa()
        }
        }
        senao{
          limpa()
            escreva("Caracter digitado inválido. Tente novamente.")
            escolha_tarefa()
        }
    }










    funcao real media_real_aluno (cadeia n1, cadeia n2, cadeia n3){ //QUESTÃO 2 - Fazemos a conversão de números em cadeia para real. Em seguida, efetuamos o calculo para média.
        //Notas
        real conversao1 = Tipos.cadeia_para_real(n1)
        real conversao2 = Tipos.cadeia_para_real(n2)
        real conversao3 = Tipos.cadeia_para_real(n3)
        real media_aluno = (conversao1 + conversao2 + conversao3) / 3 //Qtd de médias
        retorne Matematica.arredondar(media_aluno, 1)
    }








    funcao vazio media_turma(inteiro contador1, inteiro contador2){ //QUESTÃO 2 - Média Turma e classificação
       
        cadeia sala








        escreva("Qual a turma [101/102] que você deseja saber a nota média? ")
        leia(sala)
       
        real media_x = 0.0








        se(sala == "101"){
            para(inteiro i = 0; i < NUM_ALUNOS ; i++ ){
                se(matriz[i][2] == "101"){
                 contador1++
                    media_x += media_real_aluno(matriz[i][3],matriz[i][4],matriz[i][5])            
                }
            }
            se(contador1 != 0)
            {
            media_classificada = Matematica.arredondar(media_x/contador1, 1)
            limpa()
            escreva("A média da turma ",sala," é: ",media_classificada , "\n")
            se(media_classificada < 6.0)
                escreva("\nDesempenho Ruim\n")
            senao se(media_classificada >= 6.0 e media_classificada < 8.0)
                escreva("\nDesempenho Médio\n")
            senao se(media_classificada >= 8.0 e media_classificada < 10.0)
                escreva("\nDesempenho Bom!\n")
            senao
                escreva("\nDesempenho Excelente!\n")
            }
            senao
                 escreva("Sem dados para essa turma\n")
        }        
        senao se(sala == "102") {
            para(inteiro i = 0; i < NUM_ALUNOS ; i++ ){
                se(matriz[i][2] == "102"){
                contador2++
                media_x += media_real_aluno(matriz[i][3],matriz[i][4],matriz[i][5])
                }
            }
           se(contador2 != 0)  
           {        
           media_classificada = Matematica.arredondar(media_x/contador2, 1)
           limpa()
           escreva("A média da turma ",sala," é: ",media_classificada , "\n")      
           se(media_classificada < 6.0)
            escreva("\nDesempenho Ruim\n")
           senao se(media_classificada >= 6.0 e media_classificada < 8.0)
              escreva("\nDesempenho Médio\n")
           senao se(media_classificada >= 8.0 e media_classificada < 10.0)
              escreva("\nDesempenho Bom!\n")
           senao
              escreva("\nDesempenho Excelente!\n")
           }
           senao
              escreva("Sem dados para essa turma\n")
        }
        senao{
            limpa()
            escreva("Turma invalida - tente novamente\n")
            media_turma(cont1, cont2)
        }
    }








    funcao vazio situacao_aluno(){ //QUESTÃO 3 - Através da média, condicionamos se o aluno foi aprovado ou reprovado    
        cadeia numAluno
        logico encontrado = falso
        escreva("Alunos cadastrados: \n")
        para(inteiro r = 0; r < NUM_ALUNOS; r++)
        {
            escreva("-",matriz[r][0], "\n")
        }
        escreva("\nDigite o nome do(a) Aluno(a) que você deseja saber a situação? ")
        leia(numAluno)
        limpa()
            para(inteiro i = 0; i < Util.numero_linhas(matriz); i++){
                se(numAluno == matriz[i][0]){
                    encontrado = verdadeiro
                real media = media_real_aluno(matriz[i][3], matriz[i][4], matriz[i][5])
                    escreva("Informações do aluno ",numAluno, ":")
                    escreva("\n\nTurma: ",matriz[i][2])
                    escreva("\n\nNotas:\n1ª Nota - ",Matematica.arredondar(Tipos.cadeia_para_real(matriz[i][3]), 1),"\n2ª Nota - ",Matematica.arredondar(Tipos.cadeia_para_real(matriz[i][4]), 1),"\n3ª Nota - ",Matematica.arredondar(Tipos.cadeia_para_real(matriz[i][5]), 1))
                    escreva("\n\nMédia: ", media, "\n\n")
                        se(media  >= 6){
                            escreva("Situação: APROVADO\n\n")                            
                        }
                        senao{
                            escreva("Situação: REPROVADO\n\n")
                        }
                    pare
                }                                        
        }
        se(nao encontrado){
              limpa()
            escreva("Não existe aluno com esse nome. Tente Novamente.\n\n")
        }
    }








    funcao vazio exibir_dados_geral(){ //QUESTÃO 4 - Exibicao dos dados do aluno e sua Classificação
        para(inteiro i = 0; i < Util.numero_linhas(matriz) ; i++ ){              
                escreva("\nNome: ", matriz[i][0])
                escreva("\nMês de nascimento: ", matriz[i][1])
                escreva("\nTurma: ", matriz[i][2])
                escreva("\nNotas: ", matriz[i][3] , ", ", matriz[i][4], ", ", matriz[i][5], ", ")
                escreva("\nMédia Individual: ", media_real_aluno(matriz[i][3], matriz[i][4], matriz[i][5]))
                escreva("\n\n==================\n")
        }
    }








    funcao vazio querContinuar(){ //QUESTÃO 5  - Finalização e Opção para voltar ao menu principal.
        escreva("\n\nDeseja continuar? \nDigite [1] para SIM e [2] para NÃO.\n")
        leia(simNao)
        se(simNao != ""){
        se(simNao == "1"){
            escolha_tarefa()
        }
        senao se (simNao == "2"){
            escreva("Fim")
        }
        senao{
            escreva("Caracter digitado inválido. Tente novamente. ")
            querContinuar()
        }
        }senao{
            escreva("Caracter digitado inválido. Tente novamente. ")
            querContinuar()
        }
       
    }    








    funcao vazio edita_aluno(cadeia &matr[][]){ //EXTRAS - Edição do Aluno na Matriz
        cadeia name, op
        inteiro cont = 0, aluno = 0, l
        escreva("Alunos cadastrados: \n")
        para(inteiro i = 0; i < NUM_ALUNOS; i++)
        {
            escreva("-",matr[i][0], "\n")
        }
        escreva("\nDigite o nome do(a) Aluno(a) que você deseja editar: ")
        leia(name)
        para(l = 0; l < Util.numero_linhas(matr); l++)
        {
            se(matr[l][0] == name)
            {
                aluno = l
                cont++
            }
        }
        se(cont == 1)
        {
            escreva("O que você deseja editar? [1] Nome [2] Mês [3] Turma [4] 1ª Nota [5] 2ª Nota [6] 3ª Nota\n")  
            leia(op)
            se(op != ""){
            se(op == "1")
                cadastro_nome(matr, aluno)
            senao se(op == "2")
                cadastro_mes(matr, aluno)
            senao se(op == "3")
                cadastro_turma(matr, aluno)
            senao se(op == "4")
                cadastro_nota1(matr, aluno)
            senao se(op == "5")
                cadastro_nota2(matr, aluno)
            senao se(op == "6")
                cadastro_nota3(matr, aluno)
            senao{
                escreva("\nOpção inválida. Tente Novamente.\n\n")
                edita_aluno(matr)
            }
            }senao{
                escreva("\nOpção inválida. Tente Novamente.\n\n")
                edita_aluno(matr)
            }
        }
        senao{
              limpa()
            escreva("Nome inexistente. Tente Novamente. \n\n")
            edita_aluno(matr)
        }              
    }








    funcao vazio muralAniversario(){ //EXTRA - Relatório dos aniversáriantes do mês.
        para(inteiro j=0; j < 12; j++){
            se(j == 0){
                escreva("Janeiro:")
            }senao se(j == 1){
                escreva("\n\nFevereiro:")
            }senao se(j == 2){
                escreva("\n\nMarço:")
            }senao se(j == 3){
                escreva("\n\nAbril:")
            }senao se(j == 4){
                escreva("\n\nMaio:")
            }senao se(j == 5){
                escreva("\n\nJunho:")
            }senao se(j == 6){
                escreva("\n\nJulho:")
            }senao se(j == 7){
                escreva("\n\nAgosto:")
            }senao se(j == 8){
                escreva("\n\nSetembro:")
            }senao se(j == 9){
                escreva("\n\nOutubro:")
            }senao se(j == 10){
                escreva("\n\nNovembro:")
            }senao{
                escreva("\n\nDezembro:")
            }
       
           
            para(inteiro i=0; i< Util.numero_linhas(matriz); i++){
                se(matriz[i][1] == Tipos.inteiro_para_cadeia(j + 1, 10)){
                   
                    escreva("\n", matriz[i][0])
                }
            }
        }  
    }
       
    funcao vazio exibir_dados_em_ordem(){ //DESAFIO PROJETO - Mostragem para dados em ordem descrecente
           real aux
           real vet[NUM_ALUNOS + 1]
           vet[NUM_ALUNOS] = -1.0
           para(inteiro k = 0; k < NUM_ALUNOS; k++)
           {
               vetor[k] = media_real_aluno(matriz[k][3], matriz[k][4], matriz[k][5])
           }
        //Loop para posição de troca do número maior  
        para(inteiro x=0; x < NUM_ALUNOS; x++) {
            para(inteiro j = x + 1; j< NUM_ALUNOS; j++){
                se(vetor[j] > vetor[x]){
                    aux = vetor[j]
                    vetor[j] = vetor[x]
                    vetor[x] = aux
                }
            }
        }
        para(inteiro n = 0; n < NUM_ALUNOS; n++)
           {
            vet[n] = vetor[n]
           }








       inteiro s = 0
       para(inteiro i = 0; i < NUM_ALUNOS ; i++ ){
          enquanto(media_real_aluno(matriz[s][3],matriz[s][4],matriz[s][5]) != vet[i]){
                s++
        }          
          se(vet[i] != vet[i+1])
               {
               escreva("\nNome: ", matriz[s][0])
               escreva("\nMês de nascimento: ", matriz[s][1])
               escreva("\nTurma: ", matriz[s][2])
               escreva("\nNotas: ", matriz[s][3] , ", ", matriz[s][4], ", ", matriz[s][5], ", ")
               escreva("\nMédia Individual: ", vetor[i])
               escreva("\n\n==================\n")      
               }
          senao
              {
              para(inteiro v = 0; v < NUM_ALUNOS; v++)
              {
              se(v!=s){
                se(vet[i+1] == media_real_aluno(matriz[v][3],matriz[v][4],matriz[v][5]) ou vet[i+1] == -1){
                  escreva("\nNome: ", matriz[v-1][0])
                  escreva("\nMês de nascimento: ", matriz[v-1][1])
                  escreva("\nTurma: ", matriz[v-1][2])
                  escreva("\nNotas: ", matriz[v-1][3] , ", ", matriz[v-1][4], ", ", matriz[v-1][5], ", ")
                  escreva("\nMédia Individual: ", vetor[i])
                  escreva("\n\n==================\n")
                 }    
                }
               }
              }
           s = 0
        }
       
    }    
   
}




/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 14964; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {i, 29, 21, 1}-{vet, 585, 16, 3}-{s, 613, 15, 1}-{v, 629, 27, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */