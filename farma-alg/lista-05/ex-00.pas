{*
Observe a soma infinita abaixo. Ela é formada por frações em que cada numerador é a 
soma entre o numerador e o denominador da fração anterior e cada denominador, por sua
vez, é a soma do seu numerador com o denominador da fração anterior (exceto a primeira fração).

S = 1/1 + 2/3 + 5/8 + 13/21 + 34/55 + ...

Faça um programa em Pascal que calcula o valor de S, considerando apenas os 5 
primeiros termos da série. Ao final, imprimir o resultado real encontrado para S com 
duas casas decimais.
*}

program soma_de_fracoes;
var
    i, n, d: longint;
    s: real;
begin
    n := 1;
    d := 1;
    s := 0;
    i := 1;
    while i <= 5 do
    begin
        s := s + (n / d);
        n := n + d;
        d := n + d;
        i := i + 1;
    end;
    write(s:0:2);
end.
