{*
Faça uma procedure que receba como parâmetro um inteiro e retorne este número 
incrementado de uma unidade. Use esta procedure para fazer funcionar o código abaixo, 
que imprime todos os números de 1 a 10. 
*}

program incrementa_uma_unidade;
var n: longint;

procedure incrementa(var n: longint);
begin
    n := n + 1;
end;

begin
    n:= 1;
    while n <= 10 do
    begin
        writeln (n);
        incrementa (n);
    end;
end.
