{*
Uma matriz quadrada A n×n é considerada triangular quando os elementos que estão acima 
da sua diagonal principal são todos nulos (matriz triangular inferior) ou quando os 
elementos que estão abaixo de sua diagonal principal são todos nulos (matriz triangular superior).

Faça um programa em Free Pascal que leia um inteiro positivo n, sendo 1 ≤ m, n ≤ 100, e 
uma matriz inteira A n×n . O programa deve imprimir “sim” caso a matriz A seja triangular, 
caso contrário deve imprimir “nao”.

Nos casos de teste cada elemento x da matriz A é definido por 0 ≤ x ≤ 100.

PS: Seu programa deve encerrar a execução assim que descobrir se a propriedade 
definida foi atendida ou não. 
*}

program matriz_triangular;
type matriz = array [1..100, 1..100] of longint;
var
    w: matriz;
    n: longint;
    
procedure ler_matriz(var w: matriz; n: longint);
var 
    i, j: longint;
begin
    for i := 1 to n do
        for j := 1 to n do
            read(w[i, j]);
end;

function eh_triangular(var w: matriz; n: longint): boolean;
var
    i, j: longint;
    tri_superior, tri_inferior: boolean;
begin
    
    tri_inferior := true;
    
    for i := 1 to (n - 1) do
    begin
        for j := (i + 1) to n do
        begin
            if (w[i, j] <> 0) then
            begin
                tri_inferior := false;
            end;
        end;
    end;
    
    tri_superior := true;
    
    for j := 1 to (n - 1) do
    begin
        for i := (j + 1) to n do
        begin
            if (w[i, j] <> 0) then
            begin
                tri_superior := false;
            end;
        end;
    end;
    
    if (tri_superior or tri_inferior) then
        eh_triangular := true
    else
        eh_triangular := false;
end;

begin
    read(n);
    ler_matriz(w, n);
    if (eh_triangular(w, n)) then
        writeln('sim')
    else
        writeln('nao');
end.
