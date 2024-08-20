{*
É comum em editores de texto que você deseje substituir um pedaço do texto por outro
pedaço, normalmente uma palavra por outra. Este problema simula esta situação com 
números, para facilitar.

Escreva um programa em Free Pascal que leia três sequências de números inteiros 
terminadas em zero (os zeros não devem ser processados). Imagine que a primeira 
sequência é o texto completo, a segunda é a palavra que você deseja substituir 
pela terceira. Considere que o usuário nunca vai digitar mais do que 100 números antes 
de cada zero. A entrada de dados garante que a segunda sequência tem no máximo tantos 
elementos quanto a primeira. Seu programa deve determinar se a primeira ocorrência da 
segunda sequência está contida na primeira e em caso afirmativo, deve substituı́-la pela 
terceira sequência. Ao final, seu programa deve imprimir a primeira sequência após a 
substituição, caso tenha havido alguma. Caso contrário seu programa deve imprimir "vazia".
*}

program substituicao;
type vetor = array [1..100] of longint;
var
  v1, v1_original, v2, v3: vetor;
  tv1, tv2, tv3: longint;
  pos_ini, pos_fim: longint;

procedure ler_vetor(var v: vetor; var n: longint);
var i, num: longint;
begin
  i := 0;
  read(num);
  
  while (num <> 0) do
  begin
    i := i + 1;
    v[i] := num;
    read(num);
  end;
  
  n := i;
end;

function ocorre(var v2: vetor; tv2: longint; var v1: vetor; tv1: longint; var pos_ini, pos_fim: longint): boolean;
var 
  i, j, k: longint;
  ocorr: boolean;
begin
  for i := 1 to (tv1 - tv2 + 1) do
  begin
    ocorr := true;
    pos_ini := i;
    
    k := 0;
    for j := 1 to tv2 do
    begin
      if (v1[i + k] <> v2[j]) then
      begin
        ocorr := false;
        break;
      end;
      k := k + 1;
    end;
    if (ocorr) then
        break;
  end;
  pos_fim := pos_ini + k - 1;
  ocorre := ocorr;
end;

procedure substitui (var v1, v3: vetor; var tv1: longint; tv2, tv3, pos_ini, pos_fim: longint);
var i, k, deslocamento: longint;
begin
  deslocamento := (tv3 - tv2);
  k := 1;
  
  if deslocamento > 0 then
  begin
    for i := tv1 downto pos_fim + 1 do
      v1[i + deslocamento] := v1[i];
  end
  else if deslocamento < 0 then
  begin
    for i := pos_fim + 1 to tv1 do
      v1[i + deslocamento] := v1[i];
  end;
  
  for i := pos_ini to (pos_fim + deslocamento) do
  begin
    v1[i] := v3[k];
    k := k + 1;
  end;
  
  tv1 := tv1 + deslocamento;
end;

function compara_vetores(var v1, v2: vetor; tv1: longint): boolean;
var 
  i: longint;
  diferentes: boolean;
begin
  diferentes := false;
  
  for i := 1 to tv1 do
  begin
    if (v1[i] <> v2[2]) then
    begin
      diferentes := true;
      break;
    end;
  end;
  
  compara_vetores := diferentes;
end;

procedure imprime_vetor(var v: vetor; n: longint);
var i: longint;
begin
  for i := 1 to n do
    write(v[i], ' ');
end;

begin
  ler_vetor (v1,tv1);
  ler_vetor (v2,tv2);
  ler_vetor (v3,tv3);
  
  v1_original := v1;
  
  if ocorre (v2, tv2, v1, tv1, pos_ini, pos_fim) then
      substitui(v1, v3, tv1, tv2, tv3, pos_ini, pos_fim);
      
  if (compara_vetores(v1, v1_original, tv1)) then
    imprime_vetor (v1,tv1)
  else
    writeln('vazia');
end.
