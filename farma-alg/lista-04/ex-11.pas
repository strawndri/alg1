{*
Uma sequência de n números inteiros não nulos é dita piramidal k-alternante
se é constituída por k segmentos:

o primeiro com um elemento, o segundo com dois elementos e assim por diante
até o k-ésimo, com k elementos.

Além disso, os elementos de um mesmo segmento devem ser todos pares ou todos
ímpares, sendo que, para cada segmento, se seus elementos forem todos de uma
paridade, os elementos do segmento seguinte e também do anterior (exceto o 
primeiro, evidententemente) devem ser todos da paridade inversa. Isto é, as 
sequências se alternam entre par, ímpar, par, ímpar, etc (ou ao contrário).

Por exemplo, a sequência 12, 3, 7, 2, 10, 4, 5, 13, 5, 11, com n = 10 elementos
é piramidal 4-alternante.

A sequência 7, 10, 2 com n = 3 elementos é piramidal 2-alternante.

A sequência 1, 12, 4, 3, 13, 5, 12, 6 com n=8 elementos não é piramidal 
alternante pois o último segmento não tem tamanho 4.

Faça um programa Pascal que, dado um inteiro n >= 1 e uma sequência de n 
números inteiros, verifique se ela é piramidal k-alternante. Se for, o 
programa deve imprimir o valor de k, senão, deve imprimir 0.
*}

program piramidal_k_alternante;
var
  n, elemento, par, par_ant, i, j, linha: integer;
  pir: integer;
begin
  read(n);
  pir := 1;
  i := 0;
  linha := 1;
  par_ant := -1;
  while (pir = 1) and (i < n) do
  begin
    read(elemento);
    par := elemento mod 2;

    if (par = par_ant) or (n - i <= linha - 1) then
      pir := 0;

    i := i + 1;
    j := 1;
    while (pir = 1) and (j < linha) do
    begin
      read(elemento);
      if elemento mod 2 <> par then
        pir := 0;
      i := i + 1;
      j := j + 1;
    end;
    linha := linha + 1;
    par_ant := par;
  end;
  if pir = 0 then
    writeln(0)
  else
    writeln(linha - 1);
end.
