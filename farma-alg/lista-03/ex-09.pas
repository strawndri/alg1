{*
Faça um programa Pascal que leia do teclado uma quantidade arbitrária de números 
inteiros positivos terminada em zero e identifique o maior múltiplo de 7 (sete) entre 
esses números. Depois da leitura dos dados, o maior múltiplo de 7 encontrado deve ser 
impresso. O número zero serve para indicar o final da entrada e não deverá ser processado.
Caso não haja nenhum múltipolo de sete na entrada o programa deve imprimir a mensagem NENHUM.
*}

program maior_multiplo_de_7;
var
    n, maior: longint;
begin
    read(n);

    maior := 0;

    while n <> 0 do
    begin
        if (n mod 7 = 0) and (n > maior) then
            maior := n;
        read(n);
    end;

    if maior <> 0 then
        write(maior)
    else
        write('NENHUM');
end.
