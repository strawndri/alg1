{*
Faça um programa Pascal que leia do teclado dois valores inteiros x e y, 
e em seguida calcule e imprima o valor da seguinte expressão: 
x^3 + x*y
*}

program calculo_expressao_inteira;
var
    x, y, resultado: integer;
begin
    read(x, y);
    resultado := (x * x * x) + (x * y);
    write(resultado);
end.
