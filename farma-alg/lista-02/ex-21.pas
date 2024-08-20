{*
Faça um programa Pascal que receba um número inteiro positivo N e calcule a soma
dos N primeiros números ímpares positivos. Ao final, imprima esta soma.
*}

program soma_n_numeros_impares_positivos;
var
    n, i, n_impar, soma: integer;
begin
    read(n);

    soma := 0;
    n_impar := 1;

    i := 1;
    while i <= n do
    begin
        soma := soma + n_impar;
        n_impar := n_impar + 2;
        i := i + 1;
    end;

    write(soma);
end.
