program elemntos_nulos;
type matriz = array [1..100, 1..100] of longint;
var
    w: matriz;
    n, m: longint;
    l_nulas, c_nulas: longint;
    
procedure ler_matriz(var w: matriz; m, n: longint);
var 
    i, j: longint;
begin
    for i := 1 to m do
        for j := 1 to n do
            read(w[i, j]);
end;

function verificar_linhas_nulas(var w: matriz; m, n: longint): longint;
var
    i, j, total_nulas: longint;
    eh_nula: boolean;
begin
    total_nulas := 0;
    
    for i := 1 to m do
    begin
        eh_nula := true;
        
        for j := 1 to n do
        begin
            if (w[i, j] <> 0) then
            begin
                eh_nula := false;
                break;
            end;
        end;
        
        if (eh_nula) then
            total_nulas := total_nulas + 1;
    end;
    
    verificar_linhas_nulas := total_nulas;
end;

function verificar_colunas_nulas(var w: matriz; m, n: longint): longint;
var
    i, j, total_nulas: longint;
    eh_nula: boolean;
begin
    total_nulas := 0;
    
    for j := 1 to n do
    begin
        eh_nula := true;
        
        for i := 1 to m do
        begin
            if (w[i, j] <> 0) then
            begin
                eh_nula := false;
                break;
            end;
        end;
    
        if (eh_nula) then
            total_nulas := total_nulas + 1;
    end;
    
    verificar_colunas_nulas := total_nulas;
end;

begin
    read(m, n);
    ler_matriz(w, m, n);
            
    l_nulas := verificar_linhas_nulas(w, m, n);
    c_nulas := verificar_colunas_nulas(w, m, n);
    
    writeln('linhas: ', l_nulas);
    writeln('colunas: ', c_nulas);
end.
