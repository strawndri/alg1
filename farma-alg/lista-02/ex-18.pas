{*
Faça um programa Pascal que receba um número inteiro positivo N e calcule o produto dos
N primeiros números pares positivos. Ao final, imprima um inteiro que é este produto. 
Para esse exercício, considere o primeiro número par como sendo 2.
*}

program produto_n_primeiros_numeros_pares;
var
    i, n, par_final, produto: longint;
begin
    read(n);

    par_final := n * 2;
    i := 2;
    produto := 1;

    while i <= par_final do
    begin
        produto := produto * i;
        i := i + 2;
    end;

    write(produto);
end.
