{*
Faça um programa Pascal que leia de teclado um número inteiro e imprima SIM
se este é múltiplo de 3 e NAO caso contrário.
*}

program multiplo_de_3;
var
    numero: longint;
begin
    read(numero);

    if numero mod 3 = 0 then
        write('SIM')
    else
        write('NAO');
end.
