{*
Faça um programa Pascal que leia dois números inteiros representando respectivamente 
o número de lados de um polígono regular e a medida do lado. Seu programa deve fazer
o seguinte:

 - se o número de lados for 3, imprima TRIANGULO e o valor do seu perímetro;
 - se o número de lados for 4, imprima QUADRADO e o valor da sua área;
 - se o número de lados for 5, imprima PENTAGONO;
 - se o número de lados for menor que 3 imprima a mensagem "ERRO";
 - se o número de lados for maior que 5 imprima a mensagem "ERRO".
*}

program poligonos;
var
    n, l: integer;
begin
    read(n, l);

    if (n = 3) then
        write('TRIANGULO ', n*l)
    else if (n = 4) then
        write('QUADRADO ', l*l)
    else if (n = 5) then
        write('PENTAGONO')
    else
        write('ERRO');
end.
