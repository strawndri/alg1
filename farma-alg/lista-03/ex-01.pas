{*
Faça um programa Pascal que calcule o valor da soma dos quadrados dos primeiros 50
inteiros positivos não nulos e imprima o resultado do cálculo na tela.

Observe que este programa não tem entrada, apenas saída.
1^2 + 2^2 + 3^2 + ... + 50^2
*}

program soma_quadrados;
var
    soma, i: longint;
begin
    i := 1;
    soma := 0;
    while i <= 50 do
    begin
        soma := soma + (i * i);
        i := i + 1;
    end;

    write(soma);
end.
