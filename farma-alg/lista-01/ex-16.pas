{*
Faça um programa Pascal que leia dois números inteiros do teclado e imprima SIM
se o primeiro número é divisível pelo segundo.
*}

program verificar_divisibilidade;
var
    x, y: longint;
begin
    read(x, y);

    if x mod y = 0 then
        write('SIM')
    else
        write('NAO');
end.
