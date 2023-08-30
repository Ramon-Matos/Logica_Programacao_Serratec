programa
{
	inclua biblioteca Tipos
	inclua biblioteca Util
	const inteiro NUM_ALUNOS = 2
	cadeia nome, mes, turma, nota1, nota2, nota3, matriz[NUM_ALUNOS][6]
	inteiro cont1 = 0, cont2 = 0
	real media_classificada
		
	funcao inicio()
	{
		cadastro()
		media_classificada = media_turma(cont1, cont2)
		escreva("A média da turma é: ",media_classificada, "\n")
		classifica_turma()
		situacao_aluno()
		escreva("\nTabela de alunos:")
		exibir_dados()
		finaliza_programa()
	}
	
	funcao cadastro()
	{
		para(inteiro i=0; i<NUM_ALUNOS; i++)
		{
			para(inteiro j=0; j<6; j++)
			{
				se(j == 0)
				{
					escreva("Qual o nome do aluno ",i+1, "? ")
					leia(nome)
					matriz[i][j] = nome
				}
				senao se(j == 1)
				{
					escreva("Qual o mês de nascimento do aluno ",i+1, "? ")
					leia(mes)
					matriz[i][j] = mes
				}
				senao se(j == 2)
				{
					escreva("Qual a turma do aluno ",i+1, "? [101/102]")
					leia(turma)
					matriz[i][j] = turma
				}
				senao se(j == 3)
				{
					escreva("Qual a nota 1 do aluno ",i+1, "? ")
					leia(nota1)
					matriz[i][j] = nota1
				}
				senao se(j == 4)
				{
					escreva("Qual a nota 2 do aluno ",i+1, "? ")
					leia(nota2)
					matriz[i][j] = nota2
				}
				senao 
				{
					escreva("Qual a nota 3 do aluno ",i+1, "? ")
					leia(nota3)
					matriz[i][j] = nota3
				}	
			}
			
		}

	}

	funcao real media_real_aluno (cadeia n1, cadeia n2, cadeia n3)
	{
		real conversao1 = Tipos.cadeia_para_real(n1)
		real conversao2 = Tipos.cadeia_para_real(n2)
		real conversao3 = Tipos.cadeia_para_real(n3)
		real media_aluno = (conversao1 + conversao2 + conversao3) / 3
		retorne media_aluno
	}

	funcao real media_turma(inteiro contador1, inteiro contador2)
	{
		cadeia sala
		escreva("Qual turma você quer a nota? ")
		leia(sala)
		real media_x = 0.0
		se(sala == "101")
		{
			para(inteiro i = 0; i < NUM_ALUNOS ; i++ )
			{
				se(matriz[i][2] == "101")
				{
				contador1++
				media_x += media_real_aluno(matriz[i][3],matriz[i][4],matriz[i][5])				
				}
			}
			retorne media_x/contador1
		}	
		senao se(sala == "102")
		{
			para(inteiro i = 0; i < NUM_ALUNOS ; i++ )
			{
				se(matriz[i][2] == "102")
				{
				contador2++
				media_x += media_real_aluno(matriz[i][3],matriz[i][4],matriz[i][5])
				}
			}
			retorne media_x/contador2
		}
		senao
			escreva("Turma Inválida")
			retorne -10000000.0	
		
	}

	funcao classifica_turma()
	{
		se(media_classificada < 6.0)
			escreva("Desempenho Ruim\n")
		senao se(media_classificada >= 6.0 e media_classificada < 8.0)
			escreva("Desempenho Médio\n")
		senao se(media_classificada >= 8.0 e media_classificada < 10.0)	
			escreva("Desempenho Bom\n")
		senao 
			escreva("Desempenho Excelente\n")
	}
	
	funcao situacao_aluno() 
	{
		cadeia numAluno
		escreva("Qual aluno vc quer saber a situação? ")
		leia(numAluno)
    		para(inteiro i = 0; i<NUM_ALUNOS; i++)
    		{
    			se(numAluno == matriz[i][0])
    			{
    			real media = media_real_aluno(matriz[i][3], matriz[i][4], matriz[i][5])
			escreva("A média do aluno ", numAluno, " é: ", media, "\n")
    				se(media  >= 6)
        				escreva("APROVADO\n")
    				senao
       	 			escreva("REPROVADO\n")
    			}
    		
		}
	}	

	funcao vazio exibir_dados()
	{
	/*real maior = 0.0
	para(inteiro x = 0; x < Util.numero_linhas(matriz) ; x++ )
	{
		se(media_real_aluno(matriz[x][3], matriz[x][4], matriz[x][5]) > maior)
			maior = media_real_aluno(matriz[x][3], matriz[x][4], matriz[x][5])
	}
	*/
	para(inteiro i = 0; i < Util.numero_linhas(matriz) ; i++ )
	{
			
			escreva("\n\nNome: ", matriz[i][0])
			escreva("\nMês de nascimento: ", matriz[i][1])
			escreva("\nTurma: ", matriz[i][2])
			escreva("\nNotas: ", matriz[i][3] , ", ", matriz[i][4], ", ", matriz[i][5], ", ")
			escreva("\nMédia Individual: ", media_real_aluno(matriz[i][3], matriz[i][4], matriz[i][5]))
			real media = media_real_aluno(matriz[i][3], matriz[i][4], matriz[i][5])
    				se(media  >= 6)
        				escreva("\n APROVADO\n")
    				senao
       	 			escreva("\n REPROVADO\n")
			
		
		
	}
	}

	funcao finaliza_programa()
	{
		inteiro finalizar 
		escreva("Deseja finalizar o programa? [1] sim [2] não ")
		leia(finalizar)
		se(finalizar == 2)
			inicio()
		senao se(finalizar ==1)
			retorne
		
			
	}

	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3380; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */