{*
A prefeitura de Piraporinha abriu uma linha de crédito para os funcionários
estatutários. O valor máximo da prestação não poderá ultrapassar 30% do salário
bruto. Faça um programa Pascal que leia do teclado dois números inteiros que
representam o salário bruto e o valor da prestação e informe se o empréstimo
pode ou não ser concedido.
*}

program verificar_emprestimo;
var
    salario_bruto, valor_prestacao: integer;
    percentual: real;
begin
    read(salario_bruto, valor_prestacao);
    percentual := valor_prestacao/salario_bruto*100;

    if percentual > 30 then
        write('NAO')
    else
        write('SIM');
end.
