{*
Faça uma função que calcule a média ponderada com pesos respectivamente 1, 2 e 3 para as 
provas 1, 2 e 3. Faça também outra função que decida se um aluno foi aprovado ou reprovado, 
sabendo que a aprovação deve ter a média final maior ou igual a 50. As notas das provas e 
a média são valores inteiros entre zero e 100. 
*}

program media_alunos;
var i, n, p1, p2, p3, media: longint;

function media_ponderada(p1, p2, p3: longint): longint;
begin
    media_ponderada := ((p1 * 1) + (p2 * 2) + (p3 * 3)) div 6;
end;

function aprovado(media: longint): boolean;
begin
    if media >= 50 then
        aprovado := true
    else
        aprovado := false
end;

begin
    read (n);
    for i:= 1 to n do
    begin
        read (p1, p2, p3);
        media := media_ponderada (p1, p2, p3);
        if aprovado (media) then
            writeln ('aluno ',i,' aprovado com media: ', media)
        else
            writeln ('aluno ',i,' reprovado com media: ', media);
    end;
end.
