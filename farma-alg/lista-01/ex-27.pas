{*
Considere que o número de uma placa de veículo é composto por quatro algarismos. 
Faça um programa Pascal que leia um número inteiro do teclado que tenha 
exatamente 4 dígitos e apresente o algarismo correspondente à casa do milhar. 

Use o operador DIV.
*}

program milhar_do_numero_de_uma_placa;
var
    n, milhar: integer;
begin
    read(n);
    milhar := n div 1000;
    write(milhar);
end.
