{*
Faça um programa Pascal que leia do teclado dois números inteiros positivos
ímpares A e B onde (A <= B) e imprima o produto dos números ímpares de A até B.
Isto é, calcule:

a * (a + 2) * (a + 4) * ... * b

Imprima "erro" caso o número lido não satisfaça as condições. Caso contrário 
imprima o resultado do cálculo.
*}

program produto_impares;
var
    a, b, produto: longint;
begin
    read(a, b);

    produto := 1;

    while a <= b do
    begin
        produto := produto * a;
        a := a + 2;
    end;
    write(produto);
end.
