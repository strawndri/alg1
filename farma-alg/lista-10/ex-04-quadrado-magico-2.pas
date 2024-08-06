program quadrado_magico_2;
type matriz = array[1..100, 1..100] of longint;
var
    n: longint;
    w: matriz;

procedure ler_matriz(var w: matriz; n: longint);
var
    i, j: longint;
begin
    for i := 1 to n do
        for j := 1 to n do
            read(w[i, j]);
end;

function eh_quadrado_magico(var w: matriz; k, l, n: longint): boolean;
var
    i, j: longint;
    soma_d_principal, soma: longint;
    eh_mq: boolean;
begin

    eh_mq := true;
    soma_d_principal := 0;
    
    for i := 0 to (n - 1) do
        soma_d_principal := soma_d_principal + w[i + k, i + l];
    
    soma := 0;
    for i := 0 to (n - 1) do
        soma := soma + w[i + k, l + n - i - 1];

    if (soma <> soma_d_principal) then
        eh_mq := false;

    i := 0;

    while (i < n) and eh_mq do
    begin
        soma := 0;
        for j := 0 to (n - 1) do
            soma := soma + w[i + k, j + l];

        if (soma <> soma_d_principal) then
            eh_mq := false;

        i := i + 1;
    end;

    j := 0;

    while (j < n) and eh_mq do
    begin
        soma := 0;
        for i := 0 to (n - 1) do
            soma := soma + w[i + k, j + l];

        if (soma <> soma_d_principal) then
            eh_mq := false;

        j := j + 1;
    end;

    eh_quadrado_magico := eh_mq;
end;

function contar_quadrado_magico(var w: matriz; n: longint): longint;
var
    i, j, tam, total: longint;
begin
    total := 0;
    
    for tam := 2 to n do
    begin
      for i := 1 to (n - tam + 1) do
      begin
          for j := 1 to (n - tam + 1) do
          begin
              if (eh_quadrado_magico(w, i, j, tam)) then
              begin
                  total := total + 1;
              end;
          end;
      end;
    end;
    
    contar_quadrado_magico := total;
end;

begin
    read(n);
    ler_matriz(w, n);
    writeln(contar_quadrado_magico(w, n));
end.

