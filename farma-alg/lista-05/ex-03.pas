{*
Faça um programa em Pascal que leia do teclado um número inteiro n > 0 e outro número
real x e em seguida calcule e imprima o resultado de S calculado com n termos, com 
duas casas decimais, conforme definido abaixo:

S = (x^0)/1! + (x^4)/2! - (x^8)/3! + (x^12)/1! + (x^16)/2! - (x^20)/3! ... 
*}

program soma_de_fracoes;
var
    n, i: longint;
    a, b, c: real;
    x, s: real;
begin
    read(n, x);

    s := 0;
    a := 1;
    b := 1;
    c := 1;

    i := 1;
    while i <= n do
    begin

        if i mod 4 = 0 then
        begin
          a := 1;
          b := 1;
        end;

        if i mod 3 = 0 then
          s := s - (c/a)
        else
          s := s + (c / a);

        c := c * x * x * x * x;
        b := b + 1;
        a := a * b;

        i := i + 1;
    end;

    write(s:0:2);
end.
