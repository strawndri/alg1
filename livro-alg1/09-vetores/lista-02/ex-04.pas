program verificacao_de_ordenacao;
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

function verifica_ordenacao(var v: vetor; n: integer): boolean;
var
    i: longint;
    ordenado: boolean;
begin
    ordenado := true;
    i := 2;
    
    while (i <= n) and (ordenado) do
    begin
        if (v[i] < v[i - 1]) then
            ordenado := false;
        i := i + 1;
    end;
    
    verifica_ordenacao := ordenado;
end;

begin
    read(n);
    ler_vetor(v, n);
    
    if (n = 0) then
        writeln('vetor vazio')
    else if (verifica_ordenacao(v, n)) then
        writeln('sim')
    else
        writeln('nao');
end.
