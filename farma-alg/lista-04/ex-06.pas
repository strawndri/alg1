{*
Faça um programa Pascal que leia do teclado um número inteiro maior do que 1. 
Seu programa deve imprimir SIM caso ele seja primo e NAO caso contrário.

Dica: o único número par que é primo é o 2.
*}

program eh_primo;
var
    n, i, n_divisores: longint;
begin
    read(n);

    n_divisores := 0;
    i := 1;

    while i <= n do
    begin
        if (n mod i = 0) then
            n_divisores := n_divisores + 1;

        i := i + 1;
    end;

    if (n_divisores > 2) or (n <= 1) then
        write('NAO')
    else
        write('SIM');
end.
