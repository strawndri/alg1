{*
Faça um programa Pascal que leia um número inteiro, calcule se ele é 
divisível por 3 e por 7. Caso seja, imprima SIM e caso não seja imprima NAO. 

Dica: use o operador AND.
*}

program verificar_divisibilidade_por_3_e_7;
var
    numero: longint;
begin
    read(numero);

    if (numero mod 3 = 0) and (numero mod 7 = 0) then
        write('SIM')
    else
        write('NAO');
end.
