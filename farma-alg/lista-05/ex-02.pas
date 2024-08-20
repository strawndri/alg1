{*
Observe a soma infinita abaixo. Ela é formada por frações em que cada numerador
é o dobro do denominador da fração anterior e cada denominador, por sua vez, é
o dobro do numerador da fração anterior (exceto a primeira fração).

S = 1/3 + 6/2 + 4/12 + 24/8 + 16/48 + ...


Faça um programa em Pascal para calcular o valor real de S, considerando apenas 
os 10 primeiros termos da série. Ao final, imprimir o resultado encontrado para 
S com duas casas decimais.
*}

program soma_de_fracoes;
var
    x, y, z, i: longint;
    s: real;
begin
    x := 1;
    y := 3;

    s := x/y;

    i := 1;
    while i < 10 do
    begin
        z := x;
        x := y * 2;
        y := z * 2;

        s := s + (x/y);
        i := i + 1;
    end;

    write(s:0:2);
end.
