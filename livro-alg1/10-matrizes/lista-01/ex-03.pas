program matriz_inversa;
type matriz = array[1..100, 1..100] of real;
var
  a, b, axb: matriz;
  a_n, a_m, b_n, b_m, axb_n, axb_m: longint;

procedure ler_matriz(var w: matriz; n, m: longint);
var
  i, j: longint;
begin
  for i := 1 to n do
    for j := 1 to m do
      read(w[i, j]);
end;

procedure multiplicar_matrizes(var a, b, axb: matriz; a_n, a_m, b_n, b_m: longint; var axb_n, axb_m: longint);
var
  i, j, k: longint;
begin
  
  axb_n := a_n;
  axb_m := b_m;
  
  for i := 1 to a_n do
    for j := 1 to b_m do
    begin
      axb[i, j] := 0;
      for k := 1 to b_m do
        axb[i, j] := axb[i, j] + a[i, k] * b[k, j];
    end;
end;

function eh_inversa(var w: matriz; n, m: longint): boolean;
var
  i, j: longint;
  inversa: boolean;
begin
  inversa := true;
  
  i := 1;
  j := 1;
  
  while (i <= n) and (inversa) do
  begin
    while (j <= n) and (inversa) do
    begin
      if (w[i, j] = w[i, i]) and (w[i, j] <> 1) then
        inversa := false
      else if (w[i, j] <> w[i, i]) and (w[i, j] <> 0) then
        inversa := false;
      j := j + 1;
    end;
    i := i + 1;
  end;
  
  eh_inversa := inversa;
end;

begin
  read(a_n, a_m);
  ler_matriz(a, a_n, a_m);
  
  read(b_n, b_m);
  ler_matriz(b, b_n, b_m);
  
  multiplicar_matrizes(a, b, axb, a_n, a_m, b_n, b_m, axb_n, axb_m);
  if (eh_inversa(axb, axb_n, axb_m)) then
    writeln('sim')
  else
    writeln('nao');
end.
