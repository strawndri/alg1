{*
Dizemos que uma matriz quadrada inteira é um quadrado mágico se a soma dos elementos de
cada linha, a soma dos elementos de cada coluna e a soma dos elementos das diagonais
principal e secundária são todos iguais. Exemplo:

8 0 7
4 5 6
3 10 2

é um quadrado mágico pois 8+0+7 = 4+5+6 = 3+10+2 = 8+4+3 = 0+5+10 = 7+6+2 = 8+5+2 = 3+5+7 = 15.

Crie um programa em Free Pascal que leia um valor n representando o tamanho da matriz
e leia uma matrix A(n x n) que representa o quadrado e informe se a matriz é um
quadrado mágico.
*}

program quadrado_magico_1;
type matriz = array[1..100, 1..100] of longint;
var
    n: longint;
    w: matriz;

procedure ler_matriz(var w: matriz; n: longint);
var
    i, j: longint;
begin
    for i := 1 to n do
        for j := 1 to n do
            read(w[i, j]);
end;

function eh_quadrado_magico(var w: matriz; n: longint): boolean;
var
    i, j: longint;
    soma_d_principal, soma: longint;
    eh_mq: boolean;
begin
    
    eh_mq := true;
    soma_d_principal := 0;
    
    for i := 1 to n do
        soma_d_principal := soma_d_principal + w[i, i]; 
        
    soma := 0;
    for i := 1 to n do
        soma := soma + w[i, n - i + 1];
        
    if (soma <> soma_d_principal) then
        eh_mq := false;
    
    i := 1;
    
    while (i <= n) and eh_mq do
    begin
        soma := 0;
        for j := 1 to n do
            soma := soma + w[i, j];
        
        if (soma <> soma_d_principal) then
            eh_mq := false;
        
        i := i + 1;
    end;
    
    i := 1;
    j := 1;
    
    while (j <= n) and eh_mq do
    begin
        soma := 0;
        for i := 1 to n do
            soma := soma + w[i, j];
        
        if (soma <> soma_d_principal) then
            eh_mq := false;
          
        j := j + 1;
    end;
    
    eh_quadrado_magico := eh_mq;
end;

begin
    read(n);
    ler_matriz(w, n);
    if (eh_quadrado_magico(w, n)) then
      writeln('sim')
    else
      writeln('nao')
end.
