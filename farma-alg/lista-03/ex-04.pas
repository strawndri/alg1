{*
Faça um programa Pascal que leia do teclado um número inteiro m e em seguida uma
sequência de outros m números reais. Imprima a média aritmética REAL entre eles. 
Imprima com duas casas decimais.

(n1 + n2 + ... + nm) / (m)
*}

program media_aritmetica;
var
    m, i: longint;
    n, soma, media: real;
begin
    read(m);

    soma := 0;

    i := 1;
    while i <= m do
    begin
        read(n);
        soma := soma + n;
        i := i + 1;
    end;

    media := soma / m;
    write(media:0:2);
end.
