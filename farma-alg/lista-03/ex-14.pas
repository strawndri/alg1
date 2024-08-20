{*
Faça um programa Pascal que leia do teclado um valor inteiro e imprima outro inteiro 
que é o menor número N inteiro cujo fatorial (N!) seja maior que o valor informado.

Por exemplo, se for fornecido o valor 1000, o programa deve informar na tela o 
valor 7, pois 7! = 5040, e 6! = 720.
*}

program menor_numero_inteiro_fatorial;
var
    x, n, fatorial: longint;
begin
    read(x);

    n := 1;

    fatorial := 1;
    while fatorial <= x do
    begin
        fatorial := fatorial * n;

        if fatorial <= x then
            n := n + 1;
    end;

    write(n);
end.
