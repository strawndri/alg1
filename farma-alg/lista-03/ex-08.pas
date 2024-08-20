{*
Faça um programa Pascal que leia um número d que é um dígito entre 0 e 9 e depois leia
um outro inteiro n qualquer. Em seguida conte quantos dígitos d existem em n. Se não
existir nenhum dígito correspondente, a mensagem "NAO" deve ser impressa. Caso 
contrário imprima o resultado do seu cálculo.
*}

program digitos_d_em_n;
var
    d, n, i, qtd, digito_atual: longint;
begin
    read(d);
    read(n);

    qtd := 0;
    i := 1;
    while n div i >= 1 do
    begin
        digito_atual := (n div i) mod 10;
        if (d = digito_atual) then
            qtd := qtd + 1;

        i := i * 10;
    end;

    if qtd = 0 then
        write('NAO')
    else
        write(qtd);
end.
