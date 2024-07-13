program posicao_de_elementos;
type vetor = array[1..200] of longint;
var
    v: vetor;
    tam, numero, resultado: longint;

procedure ler_vetor(var v: vetor; var tam: longint);
var
    i, num, aux: longint;
begin
    i := 1;
    read(num);
    while (num <> 0) do
    begin
        v[i] := num;
        
        if (i > 1) then
        begin
            if (v[i] < v[i - 1]) then
            begin
                aux := v[i];
                v[i] := v[i - 1];
                v[i - 1] := aux;
            end;
        end;    
        
        read(num);
        i := i + 1;
    end;
    
    tam := i - 1;
end;

function busca_binaria(var v: vetor; tam, x: longint): longint;
var
    inicio, fim, meio: longint;
begin
    inicio := 1;
    fim := tam;
    meio := (inicio + fim) div 2;
    
    while (fim >= inicio) and (v[meio] <> x) do
    begin
        if (v[meio] > x) then
            fim := meio - 1
        else
            inicio := meio + 1;
        meio := (inicio + fim) div 2;
    end;
    if inicio <= fim then
        busca_binaria := meio
    else
        busca_binaria := 0;
end;

begin
    ler_vetor(v, tam);
    read(numero);
    resultado := busca_binaria(v, tam, numero);
    
    if (resultado = 0) then
        writeln('nao esta presente')
    else
        writeln(resultado);
end.
