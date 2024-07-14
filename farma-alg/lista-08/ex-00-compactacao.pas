program compactacao;
type vetor = array[1..100] of longint;
var
  v, v_compacto: vetor;
  n, j: longint;

procedure ler_vetor(var v: vetor; n: longint);
var
  i: longint;
begin
  for i := 1 to n do
    read(v[i]);
end;

procedure ordena_vetor(var v: vetor; n: longint);
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

function busca(var v: vetor; n, x: longint): boolean;
var 
  inicio, meio, fim: longint;
begin
  inicio := 1;
  fim := n;
  meio := (inicio + fim) div 2;
  
  while (fim >= inicio) and (v[meio] <> x) do
  begin
    if (v[meio] > x) then
      fim := meio -1
    else
      inicio := meio + 1;
    meio := (inicio + fim) div 2;
  end;
  
  if inicio <= fim then
    busca := true
  else
    busca := false;
end;

procedure cria_vetor_compacto(var v, v_compacto: vetor; var n, j: longint);
var
  i, k: longint;
  duplicado: boolean;
begin
  j := 0;
  for i := 1 to n do
  begin
    duplicado := false;
    for k := 1 to j do
    begin
      if v[i] = v_compacto[k] then
      begin
        duplicado := true;
        break;
      end;
    end;
    
    if not duplicado then
    begin
      j := j + 1;
      v_compacto[j] := v[i];
    end;
  end;
end;

procedure imprimir_vetor(var v: vetor; var n: longint);
var
  i: longint;
begin
  for i := 1 to n do
    write(v[i], ' ');
end;

begin
  read(n);
  
  while (n <> 0) do
  begin
    ler_vetor(v, n);
    
    FillChar(v_compacto, SizeOf(v_compacto), 0);
    cria_vetor_compacto(v, v_compacto, n, j);
    
    write('O: ');
    imprimir_vetor(v, n);
    writeln();
    
    write('C: ');
    imprimir_vetor(v_compacto, j);
    writeln();
    
    read(n);
  end;
end.
