{*
No tabuleiro de xadrez, a casa na linha 1, coluna 1 (canto superior esquerdo) é 
sempre branca e as cores das casas se alternam entre branca e preta, de acordo 
com o padrão conhecido como... xadrez! Dessa forma, como o tabuleiro tradicional 
tem oito linhas e oito colunas, a casa na linha 8, coluna 8 (canto inferior direito) 
será também branca. Neste problema, entretanto, queremos saber a cor da casa no
canto inferior direito de um tabuleiro com dimensões quaisquer: L linhas e C colunas.

Faça um programa Pascal que leia do teclado dois números naturais positivos
representando respectivamente o número de linhas L e colunas C do tabuleiro
e verifique se a cor da casa no canto inferior direito desse tabuleiro será branca ou preta.

Dica: Esta é uma questão de lógica, ela pode ser resolvida somente com alguns
IF's e ELSE's em função da paridade dos valores L e C.
*}

program cor_casa_xadrez;
var
    l, c: longint;
begin
    read(l, c);

    if (l mod 2 = c mod 2) then
        write('BRANCA')
    else
        write('PRETA');
end.
