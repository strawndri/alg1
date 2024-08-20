{*
Faça um programa Pascal que leia uma sequência de números inteiros terminada em zero 
e imprima o maior e o menor número dessa sequência. O valor zero não deve ser ser 
processado, ele serve para marcar o final da entrada de dados.
*}

program maior_e_menor;
var
    n, maior, menor: integer;
begin
    read(n);

    maior := n;
    menor := n;

    while n <> 0 do
    begin
        if n > maior then
            maior := n
        else if n < menor then
            menor := n;

        read(n);
    end;

    write(maior, ' ', menor);
end.
