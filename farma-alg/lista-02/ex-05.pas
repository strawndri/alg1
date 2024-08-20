{*
Sabendo-se que a água se solidifica a zero grau Celsius, ou a 32 Fahrenheit, 
e que entra em ebulição a 100 graus Celsius ou 212 Fahrenheit, faça um programa 
Pascal que obtenha do teclado um inteiro que é o valor de temperatura em Fahrenheit
e imprima na tela o valor correspondente em Celsius e também imprima na tela uma 
mensagem "solido", "liquido" ou "gasoso" indicando respectivamente se a água está 
no estado sólido, líquido ou gasoso.

A fórmula de conversão entre graus Celsius e Farenheit é:
5F - 9C - 160 = 0
*}

program fahrenheit_para_celsius;
var
    f: integer;
    c: real;
begin
    read(f);
    c := (f - 32) / 1.8;

    writeln(c:0:2);

    if c >= 100 then
        write('gasoso')
    else if (c > 0) and (c < 100) then
        write('liquido')
    else
        write('solido');
end.
