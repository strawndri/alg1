{*
Considere a razão r de uma P.A. (Progressão Aritmética) e um termo qualquer, 
k (ak). Escreva um programa Pascal para calcular o enésimo termo n (an). 
Seu programa deve ler quatro valores inteiros k, ak, r, n do teclado e 
imprimir o inteiro an, segundo a fórmula:
an = ak + (n - k) * r
*}

program encontrar_an;
var
    k, ak, r, n: integer;
begin
    read(k, ak, r, n);
    an := ak + (n - k) * r;
    write(an);
end.
