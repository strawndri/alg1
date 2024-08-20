{*
Faça um programa Pascal que leia do teclado três números inteiros positivos: i, j e k. 
Se j for múltiplo de i e k for múltiplo de j, o programa deve imprimir a soma dos três. 
Se os três valores forem consecutivos na ordem lida, o programa deve imprimi-los na ordem
decrescente.

Em qualquer outra situação, o programa deve calcular e imprimir a média aritmética
inteira dos três valores. Use operadores inteiros.
*}

program analise_de_numeros;
var
    i, j, k: longint;
begin
    read(i, j, k);

    if (j mod i = 0) and (k mod j = 0) then
        write(i + j + k)
    else if (k = j + 1) and (j = i + 1) then
        write(k, ' ', j, ' ', i)
    else
        write(((i + j + k)/3):0:0);
end.
