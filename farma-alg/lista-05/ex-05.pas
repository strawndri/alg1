{*
Faça um programa em Pascal que leia um inteiro positivo n, e escreva a soma real
dos n primeiros termos da série abaixo:

S = 1000/1 - 997/2 + 994/3 - 991/4 + ...

Imprima a saída com duas casas decimais.
Dica: o operador unário - pode ser usado para controlar o sinal.
*}

program soma_real_serie;
var
    n, i, k: longint;
    soma: real;
begin
    read(n);

    k := 1000;
    soma := 0;

    i := 1;
    while i <= n do
    begin
        if i mod 2 = 0 then
            soma := soma - (k/i)
        else
            soma := soma + (k/i);

        k := k - 3;
        i := i + 1;
    end;

    write(soma:0:2);
end.
