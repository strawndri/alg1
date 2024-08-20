{*
Faça um programa Pascal que leia do teclado uma sequência de números inteiros até 
que seja lido um número que seja o dobro ou a metade do anteriormente lido. O programa 
deve imprimir na saída três números inteiros que são, respectivamente, a quantidade 
de números lidos, a soma dos números lidos e os dois valores que forçaram a parada do programa.
*}

program parada_com_o_dobro;
var
    n_atual, n_anterior, i, soma: longint;
    nao_zero_inicial : boolean;
begin
    read(n_anterior);
    read(n_atual);
    soma := n_anterior + n_atual;

    i := 2;
    while (n_atual <> n_anterior * 2) and (n_atual <> n_anterior / 2) do
    begin
        n_anterior := n_atual;
        read(n_atual);
        soma := soma + n_atual;
        i := i + 1;
    end;

    write(i, ' ', soma, ' ', n_anterior, ' ', n_atual);
end.
