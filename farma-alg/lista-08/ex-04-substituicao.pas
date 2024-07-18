program substituicao;
type 
  vetor = array [1..100] of longint;
var
  v1, v2, v3, v1_original: vetor;
  tv1, tv2, tv3: longint;
  pos_ini, pos_fim: longint;

procedure ler_vetor(var v: vetor; var n: longint);
var 
  i, num: longint;
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
  i, j: longint;
  ocorr: boolean;
begin
  ocorre := false;
  for i := 1 to (tv1 - tv2 + 1) do
  begin
    ocorr := true;
    for j := 1 to tv2 do
    begin
      if (v1[i + j - 1] <> v2[j]) then
      begin
        ocorr := false;
        break;
      end;
    end;
    if (ocorr) then
    begin
      pos_ini := i;
      pos_fim := i + tv2 - 1;
      ocorre := true;
      exit;
    end;
  end;
end;

procedure substitui(var v1: vetor; var tv1: longint; v2, v3: vetor; tv2, tv3, pos_ini, pos_fim: longint);
var 
  i, j, k: longint;
  novo_tv1: longint;
begin
  novo_tv1 := tv1 - tv2 + tv3;

  for i := novo_tv1 downto pos_ini + tv3 do
    v1[i] := v1[i - tv3 + tv2];
    
  k := pos_ini;
  for j := 1 to tv3 do
  begin
    v1[k] := v3[j];
    k := k + 1;
  end;

  tv1 := novo_tv1;
end;

procedure imprime_vetor(var v: vetor; n: longint);
var 
  i: longint;
begin
  for i := 1 to n do
    write(v[i], ' ');
  writeln;
end;

function vetores_iguais(v1, v2: vetor; n1, n2: longint): boolean;
var 
  i: longint;
begin
  if n1 <> n2 then
    exit(false);
  for i := 1 to n1 do
    if v1[i] <> v2[i] then
      exit(false);
  vetores_iguais := true;
end;

begin
  ler_vetor(v1, tv1);
  ler_vetor(v2, tv2);
  ler_vetor(v3, tv3);

  // Armazena uma cópia do vetor original
  v1_original := v1;

  if ocorre(v2, tv2, v1, tv1, pos_ini, pos_fim) then
    substitui(v1, tv1, v2, v3, tv2, tv3, pos_ini, pos_fim);

  // Verifica se houve alteração no vetor
  if vetores_iguais(v1, v1_original, tv1, tv1) then
    writeln('vazia')
  else
    imprime_vetor(v1, tv1);
end.
