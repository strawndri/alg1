{*
Certo dia o professor de Johann Friederich Carl Gauss mandou que os alunos 
somassem os números de 1 a 100. Imediatamente, Gauss (aos 10 anos de idade) 
achou a resposta – 5050 – aparentemente sem ter feito o processo exaustivo 
de somar de um em um.

Supõe-se que, já aí, Gauss houvesse descoberto a fórmula de uma soma de uma
progressão aritmética.

Faça um programa em Pascal que leia do teclado três valores inteiros, 
respectivamente, n, a1 e an e realize a soma de uma P.A. de n termos, dado
o primeiro termo a1 e o último termo an.
*}

program soma_termos_pa;
var
    n, a1, an: integer;
    soma: real;
begin
    read(n, a1, an);
    soma := ((a1 + an) * n)/2;
    write(soma:0:0);
end.
