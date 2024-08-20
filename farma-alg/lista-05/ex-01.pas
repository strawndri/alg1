{*
Observe a soma infinita abaixo. Ela é formada por frações em que o numerador e o 
denominador são os valores sucessores dos valores do numerador e do denominador 
da frações anterior, porém, alternadamente invertidos (exceto a primeira fração).

S = 1/2 + 4/3 + 5/6 + 8/7 + 9/10 + 12/11 + ...

Faça um programa em Pascal para calcular o valor real de S, considerando apenas
os 10 primeiros termos da série. Ao final, imprimir o resultado encontrado para
S com 2 casas decimais.
*}

program soma_de_fracoes;
var
    x, y, b, i: longint;
    s: real;
begin
    x := 1;
    b := 1;

    s := (x) / (x + b);
    x := x + b;
    y := x + 2;

    i := 1;
    while i < 10 do
    begin
        s := s + ((y)/(y - b));
        x := y - b;
        y := x + 2;

        b := b * (-1);
        i := i + 1;
    end;

    write(s:0:2);
end.
