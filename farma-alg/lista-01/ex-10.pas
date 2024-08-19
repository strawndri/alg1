{*
Faça um programa Pascal que leia um número real do teclado e imprima a 
terça parte deste número com duas casas decimais.
*}

program terca_parte_de_um_numero_real;
var
    x, y: real;
begin
    read(x);
    y := x / 3;
    write(y:0:2);
end.
