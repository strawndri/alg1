{*
Faça um programa Pascal que leia dois números inteiros, um será o valor de um
produto e outro o valor de desconto que esse produto está recebendo.

Imprima quantos reais o produto custa na promoção.
*}

program valor_na_promocao;
var
    valor_produto, valor_desconto, valor_produto_promocao: longint;
begin
    read(valor_produto, valor_desconto);
    valor_produto_promocao := valor_produto - valor_desconto;
    write(valor_produto_promocao);
end.
