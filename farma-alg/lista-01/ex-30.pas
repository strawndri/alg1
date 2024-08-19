{*
Faça um programa Pascal que, dado um número inteiro de três dígitos lido
do teclado, construa um número inteiro de quatro dígitos com as seguintes regras:

 - os três primeiros dígitos, contados da esquerda para a direita, são iguais aos do número dado;
 - o quarto dígito é o de controle calculado da seguinte forma:
	 primeiro dígito + 3*segundo dígito + 5*terceiro dígito
 - o dígito de controle é igual ao resto da divisão dessa soma por 7.
*}

program manipular_numero;
var
    n, digito_controle, novo_n: integer;
begin
    read(n);
    digito_controle := ((n div 100) + 3 * (n mod 100 div 10) + 5 * (n mod 10)) mod 7;
    novo_n := (n * 10) + digito_controle;
    write(novo_n);
end.
