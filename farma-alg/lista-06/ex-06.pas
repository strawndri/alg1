{*
Faça um programa que receba os valores antigo e atual de um produto. Use uma função
que determine o percentual de acréscimo entre esses valores. O resultado deverá ser
mostrado pelo programa principal.
*}

program calcula_percentual;
var antigo, atual: real;

function aumento_percentual(antigo, atual: real): real;
begin
    aumento_percentual := (atual - antigo) / antigo;
end;

begin
    read (antigo, atual);
    while (antigo <> 0) or (atual <> 0) do
    begin
        writeln (aumento_percentual (antigo, atual):0:2);
        read (antigo, atual);
    end;
end.
