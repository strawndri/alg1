{*
Faça um programa Pascal que receba um número positivo N e imprima na tela a soma dos
N primeiros números da sequência de Fibonacci. Os dois primeiros números da sequência
são 0 e 1, e os próximos são dados pela soma dos dois últimos números anteriormente calculados.

A título de exemplo, os oito primeiros valores dessa sequência são: 0, 1, 1, 2, 3, 5, 8, 13. 
*}

program soma_fibonacci;
var
    n, i, soma: integer;
    penultimo, ultimo, atual: integer;
begin
    read(n);

    penultimo := 0;
    ultimo := 1;
    soma := penultimo + ultimo;

    i := 3;
    while i <= n do
    begin
        atual := penultimo + ultimo;
        soma := soma + atual;
        penultimo := ultimo;
        ultimo := atual;
        i := i + 1;
    end;
    write(soma);
end.
