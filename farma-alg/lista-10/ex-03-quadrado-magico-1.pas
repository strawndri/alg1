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
