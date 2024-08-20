{*
Um vendedor necessita de um programa que calcule o preço total devido por um cliente 
que comprou um produto em sua loja. Faça um programa Pascal que receba dois números 
inteiros que são, respectivamente, o código do produto e a quantidade comprada. Imprima
na tela o preço total com duas casas decimais, usando a tabela abaixo.
Caso o código não exista o programa deve imprimir ERRO.
*}

program preco_total_devido;
var
    cod_produto, qtd_comprada: integer;
    total: real;
    erro: boolean;
begin
    read(cod_produto, qtd_comprada);

    if (cod_produto = 1001) then
        total := qtd_comprada * 5.32
    else if (cod_produto = 1324) then
        total := qtd_comprada * 6.45
    else if (cod_produto = 6548) then
        total := qtd_comprada * 2.37
    else if (cod_produto = 987) then
        total := qtd_comprada * 5.32
    else if (cod_produto = 7623) then
        total := qtd_comprada * 6.45
    else
        begin
            erro := true;
            write('ERRO');
        end;

    if not (erro) then
        write(total:0:2);
end.
