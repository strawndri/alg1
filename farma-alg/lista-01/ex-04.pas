{*
Sabe-se que para iluminar de maneira correta os cômodos de uma casa, para cada 
Metro quadrado (m2) deve-se usar 18W de potência. Faça um programa Pascal que:
 1. receba dois inteiros representando as duas dimensões de um comodo em metros;
 2. calcule e imprima a sua área em m2;
 3. imprima a potência de iluminação que deverá ser usada em watts.
*}

program area_e_potencia_de_iluminacao;
var
    lado_1, lado_2, area: integer;
    potencia_por_m2, total_potencia: integer;
begin
    potencia_por_m2 := 18;

    read(lado_1, lado_2);

    area := lado_1 * lado_2;
    total_potencia := potencia_por_m2 * area;

    write(area, ' ', total_potencia);
end.
