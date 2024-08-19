{*
Faça um programa Pascal que leia do teclado dois números inteiros e 
imprima qual é o menor valor entre eles.
*}

program menor_valor;
var
    x, y: integer;
begin
    read(x, y);
    if x < y then
        write(x)
    else
        write(y);
end.
