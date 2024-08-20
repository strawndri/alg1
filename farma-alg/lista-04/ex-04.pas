{*
Dadas as populações Pa e Pb de duas cidades A e B (no ano atual) e suas respectivas 
taxas de crescimento anual Ta e Tb, faça um programa Pascal que que receba 4 números
reais como entrada (Pa, Pb, Ta, Tb) representando estas informações e determine se a 
população da cidade de menor população ultrapassará a de maior população e se sim, 
imprima em quantos anos que isto ocorrerá. Caso contrário, imprima 0.

Observe que O enunciado indica a existência de 4 casos possíveis: (1) a população
A é menor do que a de B com taxa de crescimento de A menor do que a de B; (2) a 
população de A é menor do que a de B com taxa de crescimento maior do que a de B. 
As situações (3) e (4) são análogas e consideram que a população de B é menor do que a de A.

Dica: Como na saída só importa o número de anos em que supostamente uma população
ultrapassará a outra, não importando qual dentre elas, você pode reduzir o problema
a apenas dois casos usando um artifício do programador, ele pode testar as populações
e taxas e fazer uso de variáveis auxiliares (ou então de trocas) para promover esta
redução. Com isso pode-se usar apenas um laço.
*}

program populacoes;
var
    Pa, Pb, Ta, Tb: real;
    Pmaior, Pmenor, Tmaior, Tmenor: real;
    anos: longint;
    ha_ultrapassagem: boolean;
begin
    read(Pa, Pb, Ta, Tb);

    anos := 0;
    ha_ultrapassagem := true;

    if (Pa < Pb) and (Ta > Tb) then
        begin
            Pmenor := Pa;
            Tmaior := Ta;

            Pmaior := Pb;
            Tmenor := Tb;
        end
    else if (Pb < Pa) and (Tb > Ta) then
        begin
            Pmenor := Pb;
            Tmaior := Tb;

            Pmaior := Pa;
            Tmenor := Ta;
        end
    else
        ha_ultrapassagem := false;

    while ha_ultrapassagem and (Pmenor < Pmaior) do
    begin
        Pmenor := Pmenor * (1 + Tmaior);
        Pmaior := Pmaior * (1 + Tmenor);
        anos := anos + 1;
    end;

    write(anos);
end.
