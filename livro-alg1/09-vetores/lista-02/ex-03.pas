program verificacao_de_ordenacao;
type vetor = array[1..200] of longint;
var 
    v: vetor;
    n, e: longint;
procedure ler_vetor(var v: vetor; var n: longint);
var 
    i, num: longint;
begin
    i := 1;
    read(num);
    
    while (num <> 0) do
    begin
        v[i] := num;
        read(num);
        i := i + 1;
    end;
    
    n := i;
end;

function procura_elemento(var v: vetor; n, e: longint): boolean;
var
    i: longint;
    encontrado: boolean;
begin
    encontrado := false;
    
    for i := 1 to n do
        if (v[i] = e) then
        begin
            encontrado := true;
            break;
        end;
    
    procura_elemento := encontrado;
end;

begin
    ler_vetor(v, n);
    
    read(e);
    
    while (e <> 0) do
    begin
        if (procura_elemento(v, n, e)) then
            writeln('pertence')
        else
            writeln('nao pertence');
        
        read(e);
    end;
        
end.
