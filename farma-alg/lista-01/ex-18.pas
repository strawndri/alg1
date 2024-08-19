{*
Faça um programa Pascal que leia do teclado um número inteiro N e
imprima se ele é PAR ou IMPAR.
*}

program par_ou_impar;
var
    n: longint;
begin
    read(n);

    if n mod 2 = 0 then
        write('PAR')
    else
        write('IMPAR');
end.
