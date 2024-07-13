program ocorrencia_de_elementos;
type vetor = array[1..10] of longint;
var
    v, u, w: vetor;
    i, k, tam: longint;

procedure ler_vetor(var v: vetor; n: longint);
var
    i: longint;
begin
    for i := 1 to n do
      read(v[i]);
end;


procedure ordenar_vetor(var v: vetor; n: longint);
var
    i, j, aux: longint;
begin
    for i := 1 to n do
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

procedure cria_vetores_ocorrencias(var v, u, w: vetor; var n, k: longint);
var 
  i, j, ocorrencias: longint;
begin
  k := 0;
  
  for i := 1 to n do
  begin
    ocorrencias := 0;
    if (busca_binaria(u, v[i], k) = false) then
    begin
      for j := i to n do
      begin
        if (v[i] = v[j]) then
          ocorrencias := ocorrencias + 1;
      end;
      k := k + 1;
      u[k] := v[i];
      w[k] := ocorrencias;
    end;
  end;
end;

begin
    read(tam);
    ler_vetor(v, tam);
    ordenar_vetor(v, tam);
    cria_vetores_ocorrencias(v, u, w, tam, k);
    
    write('a sequencia tem ', k, ' número(s) distinto(s): ');
    for i := 1 to k do
    begin
      if (i = k) then
        write(u[i], '.')
      else if (i = (k - 1)) then
        write(u[i], ' e ')
      else
        write(u[i], ', ')
    end;
    
    writeln();
    
    writeln('ocorrências: ');
    for i := 1 to k do
    begin
      if (w[i] = 1) then
        writeln(u[i], ' ocorre ', w[i], ' vez')
      else
        writeln(u[i], ' ocorre ', w[i], ' vezes');
    end;
end.
