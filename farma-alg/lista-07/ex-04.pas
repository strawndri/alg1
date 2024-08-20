{*
Faça um programa que leia uma sequência de inteiros terminada em zero e armazene esta 
sequência em um vetor. O zero não deve ser processado pois serve para marcar o final 
da entrada de dados. Em seguida o programa deve ler uma outra sequência de inteiros 
também terminada em zero e, para cada valor lido, o programa deve dizer qual a posição 
do valor dentro do vetor, caso o valor exista no vetor, ou 0 (zero) caso não exista. 
Esta segunda sequência não precisa ser armazenada em vetores. Use ao máximo funções e procedimentos apropriados.
*}

program posicao_vetores;
const
    min = 1;
    max = 200;
type vetor = array [min..max] of longint;
var
    n, m, pos, tam: longint;
    v: vetor;

function verifica_posicao(v: vetor; m, tam: longint): longint;
var
    i: longint;
begin
    for i := 1 to tam do
    begin
        if v[i] = m then
        begin
            verifica_posicao := i;
            break
        end;
    end;
end;

function cria_sequencia(var v: vetor; var n: longint): longint;
var
    i: integer;
begin
    read(n);

    i := 1;
    while n <> 0 do
    begin
        v[i] := n;
        i := i + 1;
        read(n);
    end;

    if (i = 1) and (n = 0) then
      i := 0;

    cria_sequencia := i;
end;

begin
    tam := cria_sequencia(v, n);

    if tam = 0 then
        writeln('vetor vazio')
    else
    begin
        read(m);
        while m <> 0 do
        begin
            pos := verifica_posicao(v, m, tam);
            writeln(pos);
            read(m);
        end;
    end;
end.
