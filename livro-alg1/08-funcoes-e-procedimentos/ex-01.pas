program numeros_contrarios;
var n, m: longint;

function contrario (x, y: longint): boolean;
var 
  x_contrario, i: longint;
begin
  x_contrario := 0;
  i := 1;
  while x <> 0 do 
  begin
    x_contrario := x_contrario * 10 + x mod 10;
    x := x div 10;
  end;
  
  if (x_contrario = y) then
    contrario := true
  else
    contrario := false;
end;

begin
  read(n, m);
  if contrario (n, m) then
    writeln(n, ' é o contrário de ', m)
  else
    writeln(n, ' não é o contrário de ', m);
end.
