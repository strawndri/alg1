program palavras_cruzadas;
type 
    matriz = array[1..100, 1..100] of longint;
    vetor = array[1..100] of longint;
var
    a, b: matriz;
    n, m: longint;

procedure ler_matriz(var w: matriz; n, m: longint);
var
    i, j: longint;
begin
    for i := 1 to n do
        for j := 1 to m do
            read(w[i, j]);
end;

procedure adiciona_numeracao(var w, w_numerado: matriz; n, m: longint);
var
    i, j, k: longint;
    num, tam: longint;
    v_palavra: boolean;
begin

    num := 0;
    
    for i := 1 to n do
      for j := 1 to m do
      begin
          if (w[i, j] = -1) then
              w_numerado[i, j] := -1
          else
          begin
              v_palavra := false;
              
              if (j = 1) or (w[i, j-1] = -1) then
              begin
                  tam := 0;
                  k := j;
                  
                  while (k <= m) and (w[i, k] = 0) do
                  begin
                      k := k + 1;
                      tam := tam + 1;
                  end;
                  if (tam >= 2) then
                  begin
                      num := num + 1;
                      w_numerado[i, j] := num;
                      v_palavra := true;
                  end;
              end;

              if (not v_palavra) and ((i = 1) or (w[i-1, j] = -1)) then
              begin
                  tam := 0;
                  k := i;
                  
                  while (k <= n) and (w[k, j] = 0) do
                  begin
                      k := k + 1;
                      tam := tam + 1;
                  end;
                  
                  if (tam >= 2) then
                  begin
                      num := num + 1;
                      w_numerado[i, j] := num;
                  end;
              end;
          end;
      end;
end;

procedure imprimir_matriz(var w: matriz; n, m: longint);
var
    i, j: longint;
begin
    for i := 1 to n do
    begin
        for j := 1 to m do
            write(w[i, j], ' ');
        writeln();
    end;
end;


begin
    read(n, m);
    ler_matriz(a, n, m);
    adiciona_numeracao(a, b, n, m);
    imprimir_matriz(b, n, m);
end.
