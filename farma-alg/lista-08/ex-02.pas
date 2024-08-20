{*
Fazer um programa em Free Pascal que leia do teclado dois números naturais 0 < n, m ≤ 100. 
Em seguida, leia duas sequências de respectivamente n e m números também naturais, 
sendo garantidamente m < n. Seu programa deve determinar quantas vezes a segunda
sequência ocorre na primeira.
*}

program ocorrencias;
type vetor = array[1..100] of longint;
var
  n, m: longint;
  n_sequencia, m_sequencia: vetor;

procedure ler_vetor(var v: vetor; n: longint);
var
    i: longint;
begin
    for i := 1 to n do
      read(v[i]);
end;

function conta_ocorrencias(var n_sequencia, m_sequencia: vetor; n, m: longint): longint;
var
  i, j, ocorrencias: longint;
  seq_correta: boolean;
begin
  ocorrencias := 0;

  for i := 1 to n - m + 1 do
  begin
    seq_correta := true;
    for j := 1 to m do
    begin
      if n_sequencia[i + j - 1] <> m_sequencia[j] then
      begin
        seq_correta := false;
        break;
      end;
    end;
    if seq_correta then
      ocorrencias := ocorrencias + 1;
  end;

  conta_ocorrencias := ocorrencias;
end;


begin
  read(n);
  read(m);
  
  ler_vetor(n_sequencia, n);
  ler_vetor(m_sequencia, m);
  
  writeln(conta_ocorrencias(n_sequencia, m_sequencia, n, m));
end.
