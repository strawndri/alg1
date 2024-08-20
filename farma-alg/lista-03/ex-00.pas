{*
Faça um programa Pascal que leia do teclado um conjunto de números onde cada linha contém
dois valores numéricos sendo o primeiro do tipo real e o segundo do tipo inteiro. O segundo
valor é o peso atribuído ao primeiro valor. O programa deve calcular e imprimir com duas 
casas decimais a média ponderada dos diversos valores lidos. A última linha de dados 
contém dois números zero. Esta linha não deve ser considerada no cálculo da média e 
serve apenas para marcar o final da entrada de dados.

Isto é, calcular o seguinte, supondo que m linhas foram digitadas:
(n1*p1 + n2*p2 + ... + nm*pm) / (p1 + p2 + ... + pm)
*}

program media_ponderada;
var
    n, total, soma_pesos, resultado: real;
    p: integer;
begin
    read(n, p);

    total := 0;
    soma_pesos := 0;

    while (n <> 0) or (p <> 0) do
    begin
        total := total + (n * p);
        soma_pesos := soma_pesos + p;
        read(n, p);
    end;

    resultado := total / soma_pesos;

    write(resultado:0:2);
end.
