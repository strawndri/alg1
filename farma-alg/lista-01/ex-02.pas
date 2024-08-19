{*
Faça um programa Pascal que leia dois números inteiros e imprima
a média aritmética inteira entre eles.
*} 

program media_aritmetica;
var 
    numero_1, numero_2: integer;
    media: real;
begin
    read(numero_1, numero_2);
    media := (numero_1 + numero_2) / 2;
    write(media:0:0);
end.
