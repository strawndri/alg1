{*
Faça um programa Pascal que leia um número inteiro do teclado e imprima
SIM se ele está compreendido entre 20 e 90 ou NAO caso contrário.

Observação: 20 e 90 não estão na faixa de valores.
*}

program numero_entre_20_e_90;
var
    numero: integer;
begin
    read(numero);

    if (numero > 20) and (numero < 90) then
        write('SIM')
    else
        write('NAO');
end.
