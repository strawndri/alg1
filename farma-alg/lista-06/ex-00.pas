{*
Faça uma função que receba como parâmetros dois números inteiros não nulos e 
retorne true se um for o contrário do outro e false em caso contrário.
*}

program contrario;
var n,m: longint;

function contrario (x, y: longint): boolean;
var num_invertido: longint;
begin
    num_invertido := 0;

    while y <> 0 do
    begin
        num_invertido := num_invertido * 10 + y mod 10;
        y := y div 10;
    end;

    if x = num_invertido then
        contrario := true
    else
        contrario := false;
end;

begin
    read (n,m);
    if contrario (n,m) then
        writeln (n,' eh o contrario de ',m)
    else
        writeln (n,' nao eh o contrario de ',m);
end.
