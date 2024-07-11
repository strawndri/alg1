program remocao_de_elementos;
type vetor = array[1..200] of longint;
var 
    v: vetor;
    n, p: longint;

procedure ler_vetor(var v: vetor; n: longint);
var 
    i: longint;
begin
    for i := 1 to n do
        read(v[i]);
end;

procedure remove(var v: vetor; n, p: integer);
var
    i: longint;
begin
    for i := 1 to (n - 1) do
    begin
        if (v[i] = p) then
        begin
            v[i] := v[i + 1];
            p := v[i + 1];
        end;
    end;
end;

procedure imprimir_vetor(var v: vetor; n: integer);
var
    i: longint;
begin
    for i := 1 to (n - 1) do
        write(v[i], ' ');
end;

begin
    read(n);
    ler_vetor(v, n);
    
    read(p);
    remove(v, n, p);
    
    imprimir_vetor(v, n);
end.
