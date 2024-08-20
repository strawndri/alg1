{*
Faça um programa que leia um número inteiro n (0 <= n <= 200) e em seguida leia uma 
sequência de n valores reais e os insira em um vetor de reais. O programa deve imprimir
na saída o resultado da divisão da soma dos valores positivos que estão em posições 
pares pela soma dos valores negativos que estão nas posições ímpares. Cuidado com
divisões por zero.
*}

program soma_positivos_e_negativos;
var
    n, i: integer;
    positivos, negativos: real;
    v: array [0..200] of real;
begin
    read(n);

    positivos := 0;
    negativos := 0;

    i := 1;
    while i <= n do
    begin
        read(v[i]);

        if (i mod 2 = 0) and (v[i] > 0) then
            positivos := positivos + v[i]
        else if (i mod 2 = 1) and (v[i] < 0) then
            negativos := negativos + v[i];

        i := i + 1;
    end;

    if n = 0 then
        writeln('vetor vazio')
    else if negativos = 0 then
        writeln('divisao por zero')
    else
    begin
        writeln((positivos/negativos):0:2);
    end;
end.
