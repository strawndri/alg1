{*
Faça um programa em Pascal que leia um número real x e calcule e imprima o valor de f(x) 
conforme definido abaixo. O cálculo deve parar quando abs(f(xn+1) − f(xn)) < 0.1 ou quando
chegar na iteração 15, onde abs(x) é a função em Pascal que retorna o valor absoluto de x.
Caso a iteração máxima seja atingida você deve imprimir a mensagem MAXIMO ATINGIDO, 
caso contrário imprima o valor de f(x) com 2 casas decimais.

f(x) = 5x/√1! - 6x/√2! + 11x/√3! + 12x/√4! - 17x/√5! + 18x/√6! + ...
*}

program soma_de_fracoes;
var
    i, divisor, fator, sinal: longint;
    x, y, y_ant: real;
begin
    read(x);

    fator := 5;
    divisor := 1;
    y_ant := -1;
    sinal := 1;
    y := 0;

    i := 1;
    while (abs(y - y_ant) >= 0.1) and (i < 15) do
    begin
        if (i + 1) mod 3 = 0 then
          sinal := -1
        else
          sinal := 1;

        divisor := divisor * i;
        y_ant := y;

        y := y + (sinal * (fator * x) / sqrt(divisor));

        if i mod 2 = 0 then
            fator := fator + 5
        else
            fator := fator + 1;

        i := i + 1;

    end;

    if i >= 15 then
        write('MAXIMO ATINGIDO')
    else
        write(y:0:2);
end.
