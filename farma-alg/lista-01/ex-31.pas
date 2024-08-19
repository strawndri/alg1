{*
Faça um programa Pascal que leia um número real representando o cosseno do ângulo 
formado por uma escada apoiada no chão e a distância em que a escada está de uma
parede. Calcule e imprima com 3 casas decimais a altura em que a escada toca a parede.
*}

program altura_escada;
var
    cos, c1, c2, h: real;
begin
    read(cos, c2);
    h := c2 / cos;
    c1 := sqrt((h * h) - (c2 * c2));
    write(c1:0:3);
end.
