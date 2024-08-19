{*
Faça um programa Pascal que leia do teclado um número inteiro e imprima SIM caso
o número seja impar, negativo e menor que -20 ou então se for par, positivo e maior
que 7. Caso contrário imprima NAO. A dica é usar uma combinação correta que envolva
os operadores AND e OR.

Observação: o operador MOD quando opera um número negativo, resulta em um 
valor negativo. Exemplo: -101 mod 2 resulta em -1.
*}

program verificar_numero;
var
    n: integer;
begin
    read(n);

    if  ((abs(n) mod 2 = 1) and (n < 0) and (n < -20)) or
        ((abs(n) mod 2 = 0) and (n > 0) and (n > 7)) then
        write('SIM')
    else
        write('NAO');
end.
