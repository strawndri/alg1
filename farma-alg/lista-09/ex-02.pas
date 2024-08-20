{*
Uma matriz inteira A n×n é considerada uma matriz de permutação se em cada linha
e em cada coluna houver n - 1 elementos nulos e um único elemento igual a 1.

Faça um programa em Free Pascal que leia um inteiro positivo n, sendo 1 ≤ m, n ≤ 100, 
e uma matriz inteira A n×n . O programa deve imprimir “sim” caso a matriz A seja de 
permutação, caso contrário deve imprimir “nao”.

Nos casos de teste cada elemento x da matriz A é definido por 0 ≤ x ≤ 100.

PS: Seu programa deve encerrar a execução assim que descobrir se a propriedade 
definida foi atendida ou não. 
*}

program permutacao_em_matriz;
type matriz = array[1..100, 1..100] of longint;
var
    a: matriz;
    n: longint;
    
procedure ler_matriz(var w: matriz; n: longint);
var 
    i, j: longint;
begin
    for i := 1 to n do
        for j := 1 to n do
            read(w[i, j]);
end;

function verificar_matriz(var w: matriz; n: longint): boolean;
var
    i, j: longint;
    total_nulos: longint;
    eh_matriz_permutacao_l, eh_matriz_permutacao_c, diferente_de_um_e_zero: boolean;
begin
    eh_matriz_permutacao_l := true;
    eh_matriz_permutacao_c := true;
    
    // verificar linhas
    for i := 1 to n do
    begin
        total_nulos := 0;
        diferente_de_um_e_zero := false;
        
        for j := 1 to n do
        begin
            if (w[i, j] = 0) then
                total_nulos := total_nulos + 1
            else if (w[i, j] <> 1) then
            begin
                diferente_de_um_e_zero := true;
                break;
            end;
        end;
        
        if (total_nulos <> (n - 1)) or (diferente_de_um_e_zero) then
        begin
            eh_matriz_permutacao_l := false;
            break;
        end;
    end;
    
    // verificar colunas 
    for j := 1 to n do
    begin
        total_nulos := 0;
        diferente_de_um_e_zero := false;
        
        for i := 1 to n do
        begin
            if (w[i, j] = 0) then
                total_nulos := total_nulos + 1
            else if (w[i, j] <> 1) then
            begin
                diferente_de_um_e_zero := true;
                break;
            end;
        end;
        
        if (total_nulos <> (n - 1)) or (diferente_de_um_e_zero) then
        begin
            eh_matriz_permutacao_c := false;
            break;
        end;
    end;
    
    if (not eh_matriz_permutacao_l) or (not eh_matriz_permutacao_c) then
        verificar_matriz := false;
end;

begin
    read(n);
    ler_matriz(a, n);
    if (verificar_matriz(a, n)) then
        writeln('sim')
    else
        writeln('nao');
end.
