program converte;
var n: longint;

function converte_em_decimal(x: longint): longint;
var
    decimal, y: longint;
begin
    y := 1;
    decimal := 0;
    while (x <> 0) do
    begin
        decimal := decimal + (x mod 10 * y);
        y := y * 2;
        x := x div 10;
    end;
    
    converte_em_decimal := decimal;
end;

begin
    read(n);
    writeln(converte_em_decimal(n));
end.
