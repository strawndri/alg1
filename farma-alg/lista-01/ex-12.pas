{*
Faça um programa Pascal que leia um número inteiro do teclado e imprima
o cubo do número caso ele seja positivo ou igual a zero e o quadrado do
número caso ele seja negativo.
*}

program cubo_ou_quadrado_de_um_numero;
var
    numero: integer;
begin
    read(numero);

    if (numero >= 0) then
        write(numero * numero * numero)
    else
        write(numero * numero);
end.
