{*
Faça um programa Pascal que leia uma sequência de números reais terminada em 0 que 
representam a medida dos lados de um polígono e imprima "SIM" se ele é um polígono 
regular (todos os seus lados iguais) e "NAO" caso contrário.

Note que um polígono precisa ter ao menos 3 lados para ser um polígono O número 
zero serve para indicar o final da entrada de dados e não deve ser processado.
*}

program poligono_regular;
var
    lado_atual, lado_anterior: real;
    i, qtd_lados_iguais: integer;
begin
    read(lado_atual);

    i := 0;
    qtd_lados_iguais := 0;
    lado_anterior := lado_atual;

    while lado_atual <> 0 do
    begin
        read(lado_atual);

        if (lado_anterior = lado_atual) then
            qtd_lados_iguais := qtd_lados_iguais + 1;

        i := i + 1
    end;

    if (i = (qtd_lados_iguais + 1)) and (i >= 3) then
        write('SIM')
    else
        write('NAO');
end.
