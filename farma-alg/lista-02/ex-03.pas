{*
Faça um programa Pascal que leia do teclado três valores inteiros
representando a data de nascimento de uma pessoa (dia, mês e ano)
e imprima quantos anos completos ela terá no dia 29/04/2021.
*}

program calcular_anos_completos;
var
    dia, mes, ano, anos_completos: integer;
begin
    read(dia, mes, ano);
        
    if ((dia > 29) and (mes >= 4)) or ((dia <= 29) and (mes > 4)) then
        anos_completos := 2021 - ano - 1
    else 
        anos_completos := 2021 - ano;
        
    write(anos_completos);
end.
