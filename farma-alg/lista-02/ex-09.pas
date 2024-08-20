{*
Faça um programa Pascal que leia do teclado dois valores inteiros que são as coordenadas
(X,Y) de um ponto no sistema cartesiano. Imprima na tela o quadrante ao qual o ponto 
pertence: 1, 2, 3 ou 4, conforme as regras clássicas da matemática.

Caso o ponto não pertenca a nenhum quandrante, imprima a letra X se ele está sobre o 
eixo X; imprima a letra Y se ele está sobre o eixo Y; ou então imprima a letra O, 
caso ele esteja na origem. 
*}

program posicao_no_plano_cartesiano;
var
    x, y: integer;
begin
    read(x, y);

    if (x = 0) and (y = 0) then
        write('O')

    else if (x > 0) then
        if (y > 0) then
            write(1)
        else if (y < 0) then
            write(4)
        else
            write('X')

    else if (x < 0) then
        if (y > 0) then
            write(2)
        else if (y < 0) then
            write(3)
        else
            write('X')

    else
        write('Y');
end.
