algoritmo "semnome"
var

   nome: caractere
   vendas, salario, comissao, aumento: real

inicio

      escreva ("Insira o nome do(a) vendedor(a): ")
      leia (nome)
      escreva ("Informe o salário de ", nome, ":")
      leia (salario)
      escreva ("Informe quantos reais ", nome, " conseguiu com suas vendas: ")
      leia (vendas)
      
      comissao <- vendas*15/100
      aumento <- salario+comissao
      
      escreval ("Nome do(a) funcionário(a):", nome)
      escreval ("Salário do(a) funcionário(a):", salario)
      escreval ("Salário com comissão:", aumento)

fimalgoritmo