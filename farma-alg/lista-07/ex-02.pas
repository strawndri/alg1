{*
Faça um programa que leia um número inteiro positivo n e em seguida leia uma sequência de
n números inteiros quaisquer. Seu programa deve imprimir os números distintos (na mesma 
ordem relativa entre eles) e em seguida o número de vezes que cada um deles ocorre na
mesma. Use ao máximo funções e procedimentos adequados. Dica: você pode usar vetores
auxiliares para ajudar a verificar e contar as ocorrências.
*}

program numeros_distintos;
const
    min = 1;
    max = 200;
type vetor = array [min..max] of longint;
var
    n: integer;
    v, d, q: vetor;

procedure ler_e_escrever_vetor(var v: vetor; var n: integer);
var
    i: integer;
begin
    read(n);
    for i := 1 to n do
    begin
        read(v[i]);
    end;
end;

procedure n_distintos(var v, d, q: vetor; var n: integer);
var
  i, j, k: integer;
  eh_distinto: boolean;
begin
  for i := 1 to n do
  begin
      d[i] := 0;
      q[i] := 0;
  end;

  j := 0;

  for i := 1 to n do
  begin
      eh_distinto := true;

      for k := 1 to j do
      begin
          if v[i] = d[k] then
          begin
              q[k] := q[k] + 1;
              eh_distinto := false;
              break;
          end;
      end;

      if eh_distinto then
      begin
          j := j + 1;
          d[j] := v[i];
          q[j] := 1;
      end;
  end;

  if j = 0 then
    write('vetor vazio')
  else
  begin
    if j = 1 then
        write('a sequencia tem ', j, ' numero distinto: ')
    else if j > 1 then
        write('a sequencia tem ', j, ' numeros distintos: ');

    for k := 1 to j do
        write(d[k], ' ');

    writeln();

    for k := 1 to j do
    begin
        if q[k] = 1 then
            writeln(d[k], ' ocorre ', q[k], ' vez')
        else
            writeln(d[k], ' ocorre ', q[k], ' vezes');
    end;
    end;
end;

begin
    ler_e_escrever_vetor(v, n);
    n_distintos(v, d, q, n);
end.
