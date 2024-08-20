{*
Faça um programa Pascal que leia do teclado um valor inteiro que é a
área de um cômodo e imprima um valor inteiro que é potência de 
iluminação necessária para iluminá-lo de acordo com a seguinte relação: 

 - 100 watts para cômodos com 6m^2 ou menos;
 - 80 watts para os primeiros 3m^2 e mais 15 watts a cada
   1m^2 de acréscimo para cômodos maiores.
*}

program potencia_de_iluminacao;
var
    area, P: integer;
begin
    read(area);
    
    if area <= 6 then
        P := 100
    else
        P := 80 + (area - 3) * 15;
    
    write(P);
end.
