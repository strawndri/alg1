{*
Considere que o número de uma placa de veículo é composto por quatro algarismos. 
Faça um programa Pascal que leia um número inteiro que tenha exatamente 4 dígitos
do teclado e imprima o algarismo correspondente à casa das unidades.

Use o operador MOD.
*}

program unidade_do_numero_de_uma_placa;
var
    n, unidade: integer;
begin
    read(n);
    unidade := n mod 10;
    write(unidade);
end.
