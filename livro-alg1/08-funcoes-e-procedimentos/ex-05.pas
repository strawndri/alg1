program calcula_tangente;
var angulo, tg: real;

function potencia(base: real; exp: integer): real;
var i: integer;
begin
  potencia := 1;
  for i := 1 to exp do
    potencia := potencia * base;
end;

function fatorial(x: integer): longint;
var i : integer;
begin
    fatorial := 1;
    for i := 2 to x do
      fatorial := fatorial * i;
end;

function seno(x: real): real;
var 
    i, sinal: integer;
    termo, resultado : real;
begin 
    resultado := 0;
    sinal := 1;
    for i:= 0 to 7 do
    begin
        termo := (sinal * (potencia(x, i * 2 + 1))/fatorial(i * 2 + 1));
        resultado := resultado + termo;
        sinal := -sinal;
    end;
    seno := resultado;
end;

function cosseno(x: real): real;
var 
    i, sinal: integer;
    termo, resultado : real;
begin 
    resultado := 0;
    sinal := 1;
    for i := 0 to 7 do
    begin
        termo := (sinal * (potencia(x, i * 2))/fatorial(i * 2));
        resultado := resultado + termo;
        sinal := -sinal;
    end;
    cosseno := resultado;
end;

function existe_tangente(x: real; var tg: real): boolean;
var
    sen, cos: real;
begin
    sen := seno(x);
    cos := cosseno(x);
    
    writeln('sen: ', sen:0:5, ' cos: ', cos:0:5); 
    
    if (cos = 0) then
        existe_tangente := false
    else
    begin
        tg := (sen / cos);
        existe_tangente := true;
    end;
end;

begin
    tg := 0;
    read(angulo);
    if existe_tangente(angulo, tg) then
        writeln(tg:0:5)
    else
        writeln('nao existe tangente de ', angulo:0:5);
end.
