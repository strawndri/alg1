{*
Observemos o número 3025. Ele possui a seguinte característica:

30 + 25 = 55
55^2 = 3025

Faça um programa Pascal que leia um número inteiro do teclado. Considere que o
usuário sempre digita números com 4 dígitos sem zeros no início ou final. Imprima
na tela uma mensagem indicando se o número tem a propriedade citada acima. 
Dica: use o operandor AND.
*}

program verifica_propriedade;
var
    n, dupla_1, dupla_2, quadrado_da_soma: integer;
begin
    read(n);
    dupla_1 := n div 100;
    dupla_2 := n mod 100;
    quadrado_da_soma := (dupla_1 + dupla_2) * (dupla_1 + dupla_2);

    if n = quadrado_da_soma then
        write('SIM')
    else
        write('NAO');
end.
