{*
A definição de uma série de pares Valor-Quadrado em Matemática é dada pela presença de
elementos numéricos, organizados em sequências dois-a-dois, em que cada número é 
seguido de seu quadrado exatamente uma vez (veja os exemplos abaixo).

Faça um programa Pascal que leia do teclado uma sequência com uma quantidade arbitrária
de valores inteiros positivos. A sequência termina com o valor 0, que serve para indicar 
o final da entrada de dados e não deverá ser processado.
O programa deve determinar e imprimir se a série é ou não do tipo Valor-Quadrado 
imprimindo 1 caso seja e 0 caso não seja.
*}

program valor_quadrado;
var
    anterior, atual, nao_eh_valor_quadrado, i: longint;
begin
    read(atual);

    nao_eh_valor_quadrado := 0;
    anterior := 0;

    i := 1;
    while atual <> 0 do
    begin
        if (i mod 2 = 0) and (atual <> anterior * anterior) then
            nao_eh_valor_quadrado := nao_eh_valor_quadrado + 1;

        anterior := atual;
        i := i + 1;
        read(atual);
    end;

    if nao_eh_valor_quadrado > 0 then
        write(0)
    else
        write(1);
end.
