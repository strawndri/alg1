{*
Faça um programa Pascal que leia um número real representando o diâmetro
(em metros) de uma esfera. Calcule e imprima o volume desta esfera, com 
duas casas de precisão.
*}

program volume_esfera;
var
    diametro, pi, raio, volume: real;
begin
    pi := 3.14;
    
    read(diametro);
    
    raio := diametro/2;
    volume := 4 * pi * (raio * raio * raio) / 3;
    
    write(volume:0:2);
end.
