{*
Faça um programa em Free Pascal que leia um número natural 0 < n ≤ 100 e em seguida 
leia uma sequência de n números inteiros. Seu programa deve determinar o valor do 
subsequência que maximize a soma dos seus elementos.
*}

program maximizar_soma;
type vetor = array[1..100] of longint;
var
  v: vetor;
  n, i: longint;
  max_soma, max_soma_atual: longint;
  
  
procedure ler_vetor(var v: vetor; n: longint);
var
  i: longint;
begin
  for i := 1 to n do
    read(v[i]);
end;


function maximo(x, y: longint): longint;
begin
  if x > y then
    maximo := x
  else
    maximo := y;
end;

begin
  read(n);
  ler_vetor(v, n);
  
  max_soma_atual := v[1];
  max_soma := v[1];
  
  for i := 2 to n do
  begin
    max_soma_atual := maximo(v[i], max_soma_atual + v[i]);
    max_soma := maximo(max_soma, max_soma_atual);
  end;
  
  writeln(max_soma);
  
end.
