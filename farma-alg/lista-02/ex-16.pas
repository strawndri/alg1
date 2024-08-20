{*
Alguém deseja cobrir as paredes de uma cozinha com azulejos. As lojas somente vendem
caixas com 10 azulejos. Todas as lojas do ramo vendem apenas 3 (três) tipos de 
azulejos, cujas dimensões são:

 1. 50cm x 40cm;
 2. 50cm x 60cm;
 3. 50cm x 80cm.

Faça um programa Pascal que leia do teclado dois valores inteiros representando 
respectivamente o tipo do azulejo desejado (um dos números 1, 2 ou 3) e a área que 
se deseja azulejar, em metros quadrados. Seu programa deve imprimir a quantidade de 
caixas de azulejos que deverão ser compradas para cobrir toda a área. Considere que 
pedaços de azulejo podem ser reaproveitados, de maneira a minimizar a quantidade de caixas.
*}

program caixas_de_azulejos;
var
    tipo, area_parede, area_azulejo: longint;
    qtd_azulejos, caixas: longint;
begin
    read(tipo, area_parede);

    if (tipo = 1) then
        area_azulejo := 50 * 40
    else if (tipo = 2) then
        area_azulejo := 50 * 60
    else if (tipo = 3) then
        area_azulejo := 50 * 80;

    area_parede := area_parede * 10000;
    qtd_azulejos := area_parede div area_azulejo;

    if (qtd_azulejos mod 10 > 0) then
        caixas := qtd_azulejos div 10 + 1
    else
        caixas := qtd_azulejos div 10;

    write(caixas, ' caixas');
end.
