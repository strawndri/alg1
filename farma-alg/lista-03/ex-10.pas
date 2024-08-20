{*
Faça um programa Pascal que leia um número inteiro positivo N do teclado. Depois disso, 
o programa deve calcular e imprimir todos os arranjos de dois números inteiros positivos 
A, B, ambos menores que N, de forma que quando somados (A + B), resultam no número N. 
Cada arranjo A, B deve ser impresso em uma linha de saída.
*}

program arranjos_de_soma;
var
    n, i: longint;
begin
    read(n);

    i := 1;
    while i < n do
    begin
        writeln(i, ' ', n - i);
        i := i + 1
    end;
end.
