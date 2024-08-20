{*
Faça uma função que receba como parâmetro um número inteiro e teste se ele é um 
número binário. Se ele for binário, imprima sim senão imprima nao. 
*}

program testa_binario;
var n: longint;

function eh_binario(num: longint): boolean;
var
    x: longint;
begin
    eh_binario := true;
    x := 0;

    while num <> 0 do
    begin
        x := num mod 10;
        num := num div 10;
        if (x * 1 <> 0) and (x * 1 <> 1) then
        begin
            eh_binario := false;
            break;
        end;
    end;
end;

begin
    read (n);
    if eh_binario (n) then
        writeln ('sim')
    else
        writeln ('nao');
end.
