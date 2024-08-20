{*
Faça uma função que receba como parâmetros seis inteiros dia1, mes1, ano1, dia2, 
mes2, ano2 , todas do tipo integer. Considerando que cada trinca de dia, mês e 
ano representa uma data, a função deve retornar true se a primeira data for 
anterior à segunda e false caso contrário. 
*}

program compara_datas;
var dia1, mes1, ano1, dia2, mes2, ano2: longint;

function eh_anterior(d1, m1, a1, d2, m2, a2: longint): boolean;
begin
    if (a1 < a2) then
        eh_anterior := true
    else if (a1 > a2) then
        eh_anterior := false
    else
        begin
            if (m1 < m2) then
                eh_anterior := true
            else if (m1 > m2) then
                eh_anterior := false
            else
                begin
                    if (d1 < d2) then
                        eh_anterior := true
                    else
                        eh_anterior := false;
                end;
        end;
end;

begin
    read (dia1, mes1, ano1, dia2, mes2, ano2);
    if eh_anterior (dia1, mes1, ano1, dia2, mes2, ano2) then
        writeln ('a primeira data eh anterior')
    else
        writeln ('a primeira data nao eh anterior');
end.
