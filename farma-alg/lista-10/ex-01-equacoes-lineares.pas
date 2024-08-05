program quadrado_magico_1;
type 
    matriz = array[1..100, 1..100] of real;
    vetor = array[1..100] of real;
var
    m, n: longint;
    x, b: vetor;
    w: matriz;

procedure ler_vetor(var v: vetor; m: longint);
var
    i: longint;
begin
    for i := 1 to n do
        read(v[i]);
end;

procedure ler_matriz(var w: matriz; n: longint);
var
    i, j: longint;
begin
    for i := 1 to n do
        for j := 1 to n do
            read(w[i, j]);
end;

function eh_solucao(var w: matriz; var v_solucao, v_resultado: vetor; m, n: longint): boolean;
var
    i, j: longint;
    resultado: real;
    eh_s: boolean;
begin
    eh_s := true;
    
    for i := 1 to n do
    begin
        resultado := 0;
        
        for j := 1 to n do 
            resultado := resultado + (w[i, j] * v_solucao[j]);
            
        if (resultado <> v_resultado[i]) then
        begin
            eh_s := false;
            break;
        end;
    end;
    
    eh_solucao := eh_s;
end;

begin
    read(m, n);
    ler_vetor(x, m);
    ler_matriz(w, n);
    ler_vetor(b, m);
    
    if (eh_solucao(w, x, b, m, n)) then
        writeln('sim')
    else
        writeln('nao');
end.
