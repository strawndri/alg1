program inicializacao_de_vetor;
const MAX = 200;
type vetor = array [1..MAX] of longint;
var v: vetor; tam: longint;

procedure inicializar_vetor(var v: vetor; tam: longint);
var i: longint;
begin
    for i := 1 to tam do
    begin
      if (i mod 2 = 0) then
        v[i] := 7
      else
        v[i] := -2;
    end;
end;

procedure imprimir_vetor(v: vetor; tam: longint);
var i: longint;
begin
  for i := 1 to tam do
          write(v[i], ' ');
end;

begin
  read(tam);
  inicializar_vetor(v, tam);
  imprimir_vetor(v, tam);
end.
