{*
Faça um programa Pascal que leia do teclado três valores reais 
que são as três notas obtidas por uma pessoa. Leia também um 
valor inteiro que indica a quantidade de faltas dessa pessoa.

 - Caso o resultado da média aritmética seja inferior a 4.0 
   o programa deverá imprimir "NAO".
 - Caso a média seja maior ou igual e 4.0 e inferior a 7.0, imprima "TALVEZ".
 - Caso a média seja maior ou igual a 7.0 imprima "SIM".

Alunos com o número de faltas maior ou igual a 10 estarão 
automaticamente reprovados. Neste último caso, imprima "NAO".
*}

program estudante_aprovado;
var
    n1, n2, n3, media: real;
    faltas: integer;
begin
    read(n1, n2, n3, faltas);
    media := (n1 + n2 + n3) / 3;

    if (media < 4.0) or (faltas >= 10) then
        write('NAO')
    else if (media >= 4.0) and (media < 7.0) then
        write('TALVEZ')
    else
        write('SIM');
end.
