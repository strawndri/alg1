{*
Faça um programa Pascal que leia do teclado um valor real que representa o salário
mensal de uma pessoa. Seu programa deve imprimir valor do imposto de renda (IR) mensal, 
em reais, de acordo com a tabela de 2009, que está abaixo.

Se o salário digitado for menor que o salário mínimo de R$ 540,00 o programa deve imprimir "NAO".

 1. menor ou igual a 1424,00: 0%;
 2. maior que 1424,00, menor ou igual a 2150,00: 7.5%;
 3. maior que 2150,00, menor ou igual a 2866,00: 15%;
 4. maior que 2866,00, menor ou igual a 3582,00: 22.5%;
 5. maior que 3582,00: 27.5%.

Junto com o valor do IR mensal, o programa deve imprimir a Faixa (1,2,3,4 ou 5)
correspondente ao salário.
*}

program imposto_de_renda;
var
    salario_mensal: real;
begin
    read(salario_mensal);

    if (salario_mensal < 540.00) then
        write('NAO')
    else if (salario_mensal <= 1424.00) then
        write(1, ' ', 0.00:0:2)
    else if (salario_mensal > 1424.00) and (salario_mensal <= 2150.00) then
        write(2, ' ', (salario_mensal * 0.075):0:2)
    else if (salario_mensal > 2150.00) and (salario_mensal <= 2866.00) then
        write(3, ' ', (salario_mensal * 0.15):0:2)
    else if (salario_mensal > 2866.00) and (salario_mensal <= 3582.00) then
        write(4, ' ', (salario_mensal * 0.225):0:2)
    else
        write(5, ' ', (salario_mensal * 0.275):0:2);
end.
