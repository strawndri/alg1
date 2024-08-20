{*
Faça um programa Pascal que leia do teclado um valor inteiro 
representando o ano de nascimento de uma pessoa.

Com esse dado, o programa deve fazer o seguinte:

 1. Calcular e imprimir sua idade, considerando que estamos 
    no ano de 2020;

 2. Verificar e imprimir SIM ou NAO se a pessoa já tem idade 
    para votar (16 anos ou mais);

 3. Verificar e imprimir SIM ou NAO se a pessoa já tem idade 
    para conseguir a carteira de habilitação (18 ou mais).
*}

program verificar_data_nascimento;
var
    ano_nascimento, ano_atual, idade: integer;
begin
    read(ano_nascimento);

    ano_atual := 2020;
    idade := ano_atual - ano_nascimento;

    writeln(idade);

    if (idade >= 16) then
        writeln('SIM')
    else
        writeln('NAO');

    if (idade >= 18) then
        writeln('SIM')
    else
        writeln('NAO');
end.
