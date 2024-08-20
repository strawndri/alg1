{*
Faça um programa em Free Pascal que leia diversas linhas nas quais as linhas ímpares 
contém o tamanho n (0 ≤ n ≤ 100) da sequência de números inteiros que deve ser lida na 
linha subsequente. Quando uma linha ímpar contiver o valor zero significa que a entrada 
de dados acabou e seu programa deverá encerrar com a impressão de todas as sequências 
originais e também compactadas pela eliminação de todos os elementos repetidos de cada sequência. 
*}

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
