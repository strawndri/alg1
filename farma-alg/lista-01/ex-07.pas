{*
Faça um programa Pascal que leia três números inteiros (P1, P2 e P3) contendo as 
notas das três provas de um aluno em uma certa disciplina e imprima a média final
deste aluno, a qual deve ser um número inteiro. Considerar que a média é ponderada
e que o peso das notas é 1, 2 e 3, respectivamente. 
*}

program media_ponderada;
var
    p1, p2, p3, media: integer;
begin
    read(p1, p2, p3);
    media := (p1*1 + p2*2 + p3*3) div (1 + 2 + 3);
    write(media);
end.
