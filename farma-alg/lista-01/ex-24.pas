{*
Uma P.A. (Progressão Aritmética) é determinada pela sua razão r e pelo primeiro
termo (a1). Faça um programa Pascal que seja capaz de imprimir o enésimo (n)
termo (an) de uma P.A., dado a razão (r) e o primeiro termo (a1). Seu programa
deve ler três valores inteiros do teclado (n, r, a1) do teclado e imprimir o 
inteiro an, segundo a fórmula: an = a1 + (n - 1) * r
*}

program imprimir_an;
var
    n, r, a1, an: integer;
begin
    read(n, r, a1);
    an := a1 + (n - 1) * r;
    write(an);
end.
