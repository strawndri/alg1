{*
Faça uma função que receba como parâmetro um número inteiro garantidamente
binário e o converta para decimal. 
*}

program converte;
var n: longint;

function converte_em_decimal (n_binario: longint): longint;
var
    n_decimal, n, pot: longint;
begin
    pot := 1;
    while n_binario <> 0 do
    begin
        n := n_binario mod 10;
        n_decimal := n_decimal + (n * pot);
        pot := pot * 2;
        n_binario := n_binario div 10;
    end;

    converte_em_decimal := n_decimal;
end;

begin
    read (n);
    writeln (converte_em_decimal (n));
end.
