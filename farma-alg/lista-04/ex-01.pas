{*
Um inteiro positivo N é considerado perfeito se o mesmo for igual a soma de
seus divisores positivos diferentes de N.

Exemplo: 6 é perfeito pois 1 + 2 + 3 = 6 e 1, 2 e 3 são todos os divisores
positivos de 6 e que são diferentes de 6.

Faça um programa Pascal que leia um número inteiro positivo K e mostre os K
primeiros números que são perfeitos.
*}

program numero_perfeito;
var
    k, i, n, divisor, soma: longint;
begin
    read(k);
    n := 1;
    i := 1;

    while i <= k do
    begin
        soma := 0;
        divisor := 1;
        while divisor <= n div 2 do
        begin
            if (n mod divisor = 0) then
                soma := soma + divisor;
            divisor := divisor + 1;
        end;

        if soma = n then
        begin
            write(n, ' ');
            i := i + 1;
        end;

        n := n + 1;
    end;
end.
