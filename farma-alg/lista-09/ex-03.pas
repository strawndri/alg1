{*
Faça um programa em Free Pascal que leia dois inteiros positivos m e n, sendo
1 ≤ m, n ≤ 100, e uma matriz A m×n . O programa deve imprimir “sim” se há elementos 
repetidos na matriz A, caso contrário deve imprimir “nao”. Nos casos de teste cada 
elemento x da matriz A é definido por 1 ≤ x ≤ 1000.

PS: Seu programa deve encerrar a execução assim que descobrir se a propriedade 
definida foi atendida ou não. 
*}

program repeticao_em_matriz;
type matriz = array [1..100, 1..100] of longint;
var
    a: matriz;
    m, n: longint;
    
procedure ler_matriz(var w: matriz; m, n: longint);
var 
    i, j: longint;
begin
    for i := 1 to m do
        for j := 1 to n do
            read(w[i, j]);
end;

function tem_repetidos(var w: matriz; m, n: longint): boolean;
var
    i, j, k, l: longint;
    repetiu: boolean;
begin
    repetiu := false;
    i := 1;
    while (i <= m) and not repetiu do
    begin
        j := 1;
        while (j <= n) and not repetiu do
        begin
            k := 1;
            while (k <= m) and not repetiu do
            begin
                l := 1;
                while (l <= n) and not repetiu do
                begin
                    if (w[k, l] = w[i, j]) and ((k <> i) or (l <> j)) then
                        repetiu := true;
                    l := l + 1;
                end;
                k := k + 1;
            end;
            j := j + 1;
        end;
        i := i + 1;
    end;
    
    tem_repetidos := repetiu;
end;

begin
    read(m, n);
    ler_matriz(a, m, n);
    if (tem_repetidos(a, m, n)) then
        writeln('sim')
    else
        writeln('nao');
end.


