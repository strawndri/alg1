{*
Faça um programa Pascal que, usando apenas atribuições e expressões aritméticas, 
imprima ao contrário um número inteiro de três digitos lido pelo teclado. 
Desconsidere números que começam ou terminam em zero.
*}

program numero_ao_contrario;
var
    n, n_ao_contrario: integer;
begin
    read(n);
    n_ao_contrario := ((n mod 10) * 100) + ((n mod 100 div 10) * 10) + (n div 100);
    write(n_ao_contrario);
end.
