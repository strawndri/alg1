{* 
Faça um programa Pascal que leia do teclado dois valores reais x e y, e em seguida calcule e imprima o valor da seguinte expressão com três casas decimais.
*}

program exercicio_080;
var
    x, y, resultado: real;
    
begin
    read(x, y);
    
    resultado := x/y + y/x;
    
    write(resultado:0:3);
end.
