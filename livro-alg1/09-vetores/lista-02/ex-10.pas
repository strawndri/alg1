program numeros_na_base_B;
type vetor = array[1..200] of longint;
var
  v: vetor;
  b, n, n_base_B: longint;
  vetor_eh_valido: boolean;
  
function potencia(base, exp: longint): longint;
var 
  i, res: longint;
begin
  res := 1;
  
  for i := 1 to exp do
    res := res * base;
  
  potencia := res;
end;

function cria_vetor(var v: vetor; b, n_base_B: longint): boolean;
var 
  i, digito: longint;
  res: boolean;
begin
  
  v[1] := b;
  res := true;
  i := 2;
  
  while n_base_B <> 0 do
  begin
    digito := n_base_B mod 10;
    n_base_B := n_base_B div 10;
    
    v[i] := digito;
    
    if (digito < 0) or (digito > b) then
    begin
      res := false;
      break;
    end;
    
    i := i + 1;
  end;
  
  cria_vetor := res;
end;

function processa_valores_vetor(var v: vetor; b, tam: longint): longint;
var
  i, base, exp, soma: longint;
begin
  base := b;
  exp := 0;
  soma := 0;
  for i := 2 to (tam + 1) do
  begin
    soma := soma + (potencia(base, exp) * v[i]);
    exp := exp + 1;
  end;
  
  processa_valores_vetor := soma;
end;

begin
  read(b);
  read(n);
  read(n_base_B);
  vetor_eh_valido := cria_vetor(v, b, n_base_B);
  
  if (vetor_eh_valido) then
    writeln(processa_valores_vetor(v, b, n))
  else
    writeln(-1);
end.
