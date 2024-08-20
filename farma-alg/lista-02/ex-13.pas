{*
Uma empresa concederá um aumento de salário aos seus funcionários, mas este aumento 
será de acordo com o cargo que cada um ocupa. A tabela abaixo contém os códigos, o 
cargo e e percentual de aumento correspondente.

Faça um programa Pascal que leia dois valores do teclado, o primeiro é um número real 
que informa o salário de um funcionário e o segundo é um número inteiro que informa o 
código do cargo dele. Calcule o valor do novo salário e o imprima na tela com duas
casas decimais.

Se o cargo do funcionário não estiver na tabela, ele deverá receber 40% de aumento. 
Imprima o valor do salário antigo, o do novo salário e a diferença entre eles, nesta
ordem, em 3 linhas, todos eles sempre valores reais com duas casas decimais.

Código 	Cargo 	Percentual
101 	Gerente 	10%
102 	Engenheiro 	20%
103 	Técnico 	30%
*}

program salario;
var
    salario_atual, novo_salario, diferenca_salarios, percentual: real;
    cod_funcionario: integer;
begin
    read(salario_atual, cod_funcionario);

    if (cod_funcionario = 101) then
        percentual := 10
    else if (cod_funcionario = 102) then
        percentual := 20
    else if (cod_funcionario = 103) then
        percentual := 30
    else
        percentual := 40;

    novo_salario := salario_atual + (salario_atual) * (percentual/100);
    diferenca_salarios := novo_salario - salario_atual;

    writeln(salario_atual:0:2);
    writeln(novo_salario:0:2);
    writeln(diferenca_salarios:0:2);
end.
