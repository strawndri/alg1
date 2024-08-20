{*
Faça um programa Pascal que leia do teclado um conjunto de 4 valores i, a, b, c, 
sendo que i é um valor inteiro e positivo e a, b, c, são quaisquer valores reais. 
Imprima na tela os valores de a, b, c da seguinte forma:

 - os três valores a, b, c em ordem crescente, se i = 1
 
 - os três valores a, b, c em ordem decrescente, se i = 2,
 
 - os três valores a, b, c de forma que o maior dentre a, b, c fique entre os outros 
   dois valores, com a ordem relativa entre os outros dois deles mantida, se i = 3. 
   Observe no exemplo de teste 2 que o maior valor (68) foi impresso na saída esperada 
   no meio, e os valores 5 e 45 ficaram na mesma ordem relativa, isto é, o 5 aparece antes
   do 45 na saída porquê na entrada eles estavam nesta ordem.
*}

program alterar_ordem_valores_reais;
var
    i: integer;
    a, b, c: real;
begin
    read(i, a, b, c);

    if (i = 1) then
    begin
        if (a < b) and (a < c) then
            if (b < c) then
                write(a:0:0, ' ', b:0:0, ' ', c:0:0)
            else
                write(a:0:0, ' ', c:0:0, ' ', b:0:0)
        else if (b < a) and (b < c) then
            if (a < c) then
                write(b:0:0, ' ', a:0:0, ' ', c:0:0)
            else
                write(b:0:0, ' ', c:0:0, ' ', a:0:0)
        else if (c < a) and (c < b) then
            if (a < b) then
                write(c:0:0, ' ', a:0:0, ' ', b:0:0)
            else
                write(c:0:0, ' ', b:0:0, ' ', a:0:0)
    end
    else if (i = 2) then
    begin
        if (a > b) and (a > c) then
            if (b > c) then
                write(a:0:0, ' ', b:0:0, ' ', c:0:0)
            else
                write(a:0:0, ' ', c:0:0, ' ', b:0:0)
        else if (b > a) and (b > c) then
            if (a > c) then
                write(b:0:0, ' ', a:0:0, ' ', c:0:0)
            else
                write(b:0:0, ' ', c:0:0, ' ', a:0:0)
        else if (c > a) and (c > b) then
            if (a > b) then
                write(c:0:0, ' ', a:0:0, ' ', b:0:0)
            else
                write(c:0:0, ' ', b:0:0, ' ', a:0:0)
    end
    else if (i = 3) then
    begin
        if (a > b) and (a > c) then
            write(b:0:0, ' ', a:0:0, ' ', c:0:0)
        else if (b > a) and (b > c) then
            write(a:0:0, ' ', b:0:0, ' ', c:0:0)
        else if (c > a) and (c > b) then
            write(a:0:0, ' ', c:0:0, ' ', b:0:0)
    end;

end.
