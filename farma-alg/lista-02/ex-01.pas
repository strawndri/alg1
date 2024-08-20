{*
Faça um programa Pascal que leia do teclado um número inteiro 
positivo. Seu programa deve imprimir uma mensagem indicando em 
qual das seguintes situações esse número se enquadra:

 - Múltiplo exclusivamente de 7: imprimir "Multiplo exclusivamente de 7."
 - Múltiplo exclusivamente de 11: imprimir "Multiplo exclusivamente de 11."
 - Múltiplo de 7 e de 11: imprimir: "Multiplo de 7 e de 11."
 - Não é múltiplo nem de 7 nem de 11: imprimir: "Nao e multiplo nem de 7 nem de 11."
*}

program verificar_se_eh_multiplo;
var
    n: integer;
begin
    read(n);
    
    if (n mod 7 = 0) and (n mod 11 = 0) then
        write('Multiplo de 7 e de 11.')
    else if (n mod 7 = 0) then
        write('Multiplo exclusivamente de 7.')
    else if (n mod 11 = 0) then
        write('Multiplo exclusivamente de 11.')
    else
        write('Nao e multiplo nem de 7 nem de 11.');
end.
