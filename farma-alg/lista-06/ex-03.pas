{*
Faça uma função que receba como parâmetro um número inteiro e retorne true se
ele for primo e false em caso contrário. 
*}

program testa_se_primo;
var i: longint;

function eh_primo(num: longint): boolean;
var k, divisores: longint;

begin
    eh_primo := true;
    divisores := 0;

    if (num mod 2 = 0) and (num <> 2) then
        eh_primo := false
    else
        begin
            k := 1;
            while (k <= num) and (divisores <= 2) do
            begin
                if num mod k = 0 then
                    divisores := divisores + 1;
                k := k + 1;
            end;
            if divisores > 2 then
                eh_primo := false;
        end;
end;

begin
    for i:= 2 to 10000 do
        if eh_primo (i) then
            writeln (i);
end.
