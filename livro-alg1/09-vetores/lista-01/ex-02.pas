program ler_imprimir_vetores_v1;
const MAX = 200;
type vetor = array [1..MAX] of longint;
var v: vetor; tam: longint;

procedure ler_vetor(var v: vetor; var tam: longint);
var i, num: longint;
begin
	i := 1;
	read(num);
	
	while (num <> 0) do
	begin
		v[i] := num;
		read(num);
		i := i + 1;
	end;

	tam := i - 1;		 
end;

procedure imprimir_vetor(v: vetor; tam: longint);
var i: longint;
begin
	for i := 1 to tam do
		write(v[i], ' ');
end;

begin
	ler_vetor(v, tam);
	imprimir_vetor(v,tam);
end.
