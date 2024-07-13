program elementos_repetidos;
type vetor = array[1..10] of longint;
var
    v, u: vetor;
    k: longint;

procedure ler_vetor(var v: vetor);
var
    i: longint;
begin
    for i := 1 to 10 do
      read(v[i]);
end;


procedure ordenar_vetor(var v: vetor);
var
    i, j, aux: longint;
begin
    for i := 1 to 10 do
    begin
        aux := v[i];
        j := i - 1;
        while (j >= 1) and (v[j] > aux) do
        begin
            v[j + 1] := v[j];
            j := j - 1;
        end;
        v[j + 1] := aux;
    end;
end;

function busca_binaria(var v: vetor; x, n: longint): boolean;
var
    inicio, fim, meio: longint;
begin
    inicio := 1;
    fim := n;
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
        busca_binaria := true
    else
        busca_binaria := false;
end;

procedure imprimir_vetor(var v: vetor; tam: longint);
var i: longint;
begin
  for i := 1 to tam do
  begin
    write(v[i], ' ');
  end;
end;

procedure criar_vetor_repetidos(var v, u: vetor; var k: longint);
var 
  i, j, repetidos: longint;
begin
  k := 0;
  
  for i := 1 to 10 do
  begin
    repetidos := -1;
    if (busca_binaria(u, v[i], k) = false) then
    begin
      j := i;
      
      while (j <= 10) and (repetidos < 1) do
      begin
        if (v[i] = v[j]) then
        begin
          repetidos := repetidos + 1;
        end;
        j := j + 1;
      end;
      
      if (repetidos >= 1) then
      begin
        k := k + 1;
        u[k] := v[i];
      end;
    end;
  end;
end;

begin
    ler_vetor(v);
    ordenar_vetor(v);
    criar_vetor_repetidos(v, u, k);
    imprimir_vetor(u, k);
end.


