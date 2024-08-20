{*
Faça um programa Pascal que, dados dois números inteiros positivos, imprima quantas 
vezes o segundo divide exatamente o primeiro. Se o segundo não divide o primeiro o 
número de vezes é zero. Por exemplo, 72 pode ser dividido exatamente por 3 duas vezes. 
Use somente operadores inteiros.
*}

program quantidade_divisoes;
var
    x, y, i: longint;
begin
    read(x, y);

    i := 0;

    while x mod y = 0 do
    begin
        x := x div y;
        i := i + 1;
    end;

    write(i);
end.
