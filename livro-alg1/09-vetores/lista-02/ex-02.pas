program inicializacao_de_vetor;
const MAX = 200;
type vetor = array [1..MAX] of real;
var v: vetor; tam: longint;

function ler_vetor(var v: vetor; tam: longint): vetor;
var i: longint;
begin
    for i := 1 to tam do
      read(v[i]);
      
    ler_vetor := v;
end;

procedure interpreta_dados_vetor(v: vetor; tam: longint);
var 
  i: longint;
  positivos, negativos: real;
begin
  positivos := 0;
  negativos := 0;
  
  if (tam = 0) then
    writeln('vetor vazio')
  else
  begin
    for i := 1 to tam do
    begin
      if (v[i] >= 0) then
        positivos := positivos + v[i]
      else
        negativos := negativos + v[i];
    end;
    
    if (negativos = 0) then
      writeln('divisao por zero')
    else 
      writeln((positivos/negativos):0:2);
  end;
end;

begin
  read(tam);
  ler_vetor(v, tam);
  interpreta_dados_vetor(v, tam);
end.
