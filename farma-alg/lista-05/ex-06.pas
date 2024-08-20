{*
Faça um programa em Pascal que leia do teclado um número inteiro positivo N. 
Depois disso, o programa deve calcular e imprimir a soma de todas as frações em que 
a soma do numerador com o denominador de cada fração seja o número N.

Por exemplo, se N=7, o programa deve calcular a soma abaixo:

S = 1/6 + 2/5 + 3/4 + 4/3 + 5/2 + 6/1

Seu programa deve imprimir a saída o valor real com duas casas decimais.
*}

program soma_de_fracoes;
var
    n, k: longint;
    soma: real;
begin
    read(n);
    soma := 0;
    k := 1;
    while k < n do
    begin
        soma := soma + (k)/(n - k);
        k := k + 1;
    end;
    write(soma:0:2);
end.
