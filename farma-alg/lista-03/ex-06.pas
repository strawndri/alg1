{*
Uma agência governamental deseja conhecer a distribuição da população do país por 
faixa salarial. Para isto, coletou dados do último censo realizado e criou um 
arquivo contendo, em cada linha, o salário de um cidadão particular. Os salários
variam de zero a 19.000,00 unidades da moeda local.

Considere o salário mínimo igual a 450,00 unidades da moeda local.

As faixas salariais de interesse são as seguintes:

 - de 0 a 3 salários mínimos
 - de 4 a 9 salários mínimos
 - de 10 a 20 salários mínimos
 - acima de 20 salários mínimos.

Faça um programa Pascal que leia uma sequência de números reais, que será terminado
em zero. O zero não deve ser processado e serve para terminar o programa. O programa
deve imprimir na tela os percentuais da população para cada faixa salarial de interesse.
*}

program faixa_salarial;
var
    salario, salario_minimo: real;
    total, qtd_f1, qtd_f2, qtd_f3, qtd_f4: integer;
    perc_f1, perc_f2, perc_f3, perc_f4: real;
begin
    read(salario);
    salario_minimo := 450.00;

    qtd_f1 := 0;
    qtd_f2 := 0;
    qtd_f3 := 0;
    qtd_f4 := 0;

    total := 0;
    while salario <> 0.00 do
    begin
        if (salario > 0) and (salario <= 3 * salario_minimo) then
            qtd_f1 := qtd_f1 + 1
        else if (salario >= 4 * salario_minimo) and (salario <= 9 * salario_minimo) then
            qtd_f2 := qtd_f2 + 1
        else if (salario >= 10 * salario_minimo) and (salario <= 20 * salario_minimo) then
            qtd_f3 := qtd_f3 + 1
        else
            qtd_f4 := qtd_f4 + 1;

        total := total + 1;
        read(salario);
    end;

    perc_f1 := (qtd_f1/total) * 100;
    perc_f2 := (qtd_f2/total) * 100;
    perc_f3 := (qtd_f3/total) * 100;
    perc_f4 := (qtd_f4/total) * 100;

    writeln(perc_f1:0:2);
    writeln(perc_f2:0:2);
    writeln(perc_f3:0:2);
    writeln(perc_f4:0:2);
end.
