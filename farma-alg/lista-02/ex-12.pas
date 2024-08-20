{*
Um banco concederá um crédito especial aos seus clientes, mas este crédito será 
dependente do saldo médio de cada cliente no último ano. Faça um programa Pascal 
que leia do teclado um valor inteiro que é o saldo médio de um cliente específico 
e calcule o valor do crédito de acordo com a tabela abaixo. Imprima na tela um inteiro
que é o saldo médio lido e outro valor inteiro que é o valor do crédito que pode ser 
concedido.

Observação: este último valor impresso deverá ser seguido do símbolo "%", a menos da 
situação em que este crédito é zero, neste caso não deve ser impresso este símbolo.

Saldo médio 	Percentual
de 0 a 200 	0
de 201 a 400 	20% do valor do saldo médio
de 401 a 600 	30% do valor do saldo médio
acima de 601 	40% do valor do saldo médio
*}

program credito_especial;
var
    saldo_medio: integer;
begin

    read(saldo_medio);
    writeln(saldo_medio);

    if (saldo_medio >= 0) and (saldo_medio <= 200) then
        write(0)
    else if (saldo_medio >= 201) and (saldo_medio <= 400) then
        write(20, '%')
    else if (saldo_medio >= 401) and (saldo_medio <= 600) then
        write(30, '%')
    else if (saldo_medio >= 601) then
        write(40, '%');
end.
