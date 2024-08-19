{*
Faça um programa Pascal que leia um número inteiro do teclado. Se ele estiver
entre os valores -15 e 30 (-15 e 30 não estão inclusos), imprima seu número 
oposto, senão imprima o próprio número.
*}

program verifica_numero;
var
    numero: integer;
begin
    read(numero);

    if (numero > -15) and (numero < 30) then
        write(-numero)
    else
        write(numero);
end.
