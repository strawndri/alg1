{*
Faça um programa Pascal que leia um número inteiro do teclado, calcule se 
ele é ou não divisível por 5. Imprima SIM caso ele seja e NAO em caso contrário.
*}

program verificar_divisibilidade_por_5;
var
    n: longint;
begin
    read(n);

    if n mod 5 = 0 then
        write('SIM')
    else
        write('NAO');
end.
