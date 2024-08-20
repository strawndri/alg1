{*
Faça um programa que leia um inteiro positivo n e em seguida leia n valores inteiros 
quaisquer e imprima "sim" se o vetor estiver ordenado em ordem crescente e "nao" 
em caso contrário. Em qualquer caso, o programa também deve imprimir o vetor, mas na 
ordem inversa com relação à leitura. Use funções e procedimentos apropriados.
*}

program ordem_vetores;
const
    min = 1;
    max = 200;
type vetor = array [min..max] of longint;
var
    n, i: integer;
    v: vetor;
    ordenado: boolean;

procedure imprime_vetor_ordenado(v: vetor; n: integer);
var
    i: integer;
begin
    for i := n downto 1 do
      write(v[i], ' ');
end;

function ordem_crescente(e_atual, e_anterior: longint): boolean;
begin
    if e_anterior <= e_atual then
        ordenado := true
    else
        ordenado := false;
end;

begin
    read(n);

    if n = 0 then
        writeln('vetor vazio')
    else
    begin
        ordenado := true;

        for i := 1 to n do
        begin
            read(v[i]);

            if (i > 1) and (ordem_crescente(v[i], v[i - 1]) = false) then
                ordenado := false;
        end;

        if ordenado then
            writeln('sim')
        else
            writeln('nao');

        imprime_vetor_ordenado(v, n);
    end;
end.
