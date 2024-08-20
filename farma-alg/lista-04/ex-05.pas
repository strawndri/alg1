{*
Um número inteiro positivo é dito triangular se seu valor é o produto de três
números naturais consecutivos. Por exemplo, o número 120 é triangular 
porque 120 = 4 x 5 x 6 .

Faça um programa Pascal que leia do teclado um número inteiro positivo n e 
verifique se ele é triangular ou não. Se for, imprima 1 e se não for, imprima 0.
*}

program numero_triangular;
var
    x, n1, n2, n3, produto: longint;
begin
    read(x);

    n1 := 1;
    n2 := 2;
    n3 := 3;

    produto := n1 * n2 * n3;

    while produto < x do
    begin
        n1 := n1 + 1;
        n2 := n2 + 1;
        n3 := n3 + 1;

        produto := n1 * n2 * n3;
    end;

    if produto = x then
        write(1)
    else
        write(0);
end.
