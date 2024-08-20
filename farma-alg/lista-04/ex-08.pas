{*
Se multiplicarmos 37 por alguns números, obteremos números cujos algarismos, 
quando somados, resultam no mesmo número que foi multiplicado pelo 37. Por exemplo, 
se tomarmos o número 15, multiplicando-o por 37, obtemos 555. Somando-se 5 + 5 + 5 resulta em 15.

Faça um programa Pascal que leia um número inteiro positivo do teclado, calcule 
o resultado da multiplicação por 37, some os algarismos do resultado, compare 
essa soma com o número lido e imprima "SIM" se há coincidência ou "NAO" se não há coincidência.
*}

program analisando_numeros_multiplicados_por_37;
var
    n, produto, soma: longint;
begin
    read(n);
    produto := n * 37;
    soma := (produto mod 10) + (produto div 10 mod 10) + (produto div 100 mod 10);

    if n = soma then
        write('SIM')
    else
        write('NAO');
end.
