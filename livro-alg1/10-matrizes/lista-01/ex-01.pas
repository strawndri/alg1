program matriz_transposta;
type matriz = array[1..100, 1..100] of longint;
var
  a, b: matriz;
  n_a, m_a, n_b, m_b: longint;

procedure ler_matriz(var w: matriz; n, m: longint);
var
  i, j: longint;
begin
  for i := 1 to n do
    for j := 1 to m do
      read(w[i, j]);
end;

function eh_transposta(var w, wt: matriz; n, m: longint): boolean;
var
  i, j: longint;
  transposta: boolean;
begin

  transposta := true;
  
  i := 1;
  j := 1;
  
  while (i <= n) and transposta do
  begin
    while (j <= m) and transposta do
    begin
      writeln(w[i, j], ' - ', wt[j, i]);
      if (w[j, i] <> wt[i, j]) then
      begin
        transposta := false;
        break;
      end;
      
      j := j + 1;
    end;
    writeln();
    
    i := i + 1;
  end;
  
  eh_transposta := transposta;
end;

begin
  read(n_a, m_a);
  ler_matriz(a, n_a, m_a);
  
  read(n_b, m_b);
  ler_matriz(b, n_b, m_b);
  
  if (eh_transposta(a, b, n_a, m_a)) then
    writeln('sim')
  else
    writeln('nao');
end.
