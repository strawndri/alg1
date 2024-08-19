{*
Considere que o número de uma placa de veículo é composto por quatro
algarismos. Faça um programa Pascal que leia um número inteiro que tenha
exatamente 4 dígitos do teclado e imprima o algarismo correspondente à 
casa das centenas. Use os operadores DIV e MOD.
*}

program centena_do_numero_de_uma_placa;
var
    n, centena: integer;
begin
    read(n);
    centena := n mod 1000 div 100;
    write(centena);
end.
