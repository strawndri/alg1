{*
O custo ao consumidor de um carro novo é a soma do custo de fábrica com a 
percentagem do distribuidor e dos impostos (aplicados ao custo de fábrica).

Supondo que a percentagem do distribuidor seja de 28% e os impostos de 45%, 
faça um programa Pascal que leia um número inteiro representando o custo de 
fábrica de um carro e imprima o custo ao consumidor.

PS: Use somente operadores inteiros.
*}

program calculo_do_custo_ao_consumidor;
var
    custo_fabrica, perc_distribuidor, perc_impostos: integer;
    custo_ao_consumidor: integer;
begin
    read(custo_fabrica);

    perc_distribuidor := custo_fabrica * 28 div 100;
    perc_impostos := custo_fabrica * 45 div 100;

    custo_ao_consumidor := custo_fabrica + perc_distribuidor + perc_impostos;

    write(custo_ao_consumidor);
end.
