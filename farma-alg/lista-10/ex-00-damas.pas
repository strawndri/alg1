program damas;
const n = 8;
type
    matriz = array[1..n, 1..n] of longint;
var
    w: matriz;

procedure ler_matriz(var w: matriz);
var
    i, j: longint;
begin
    for i := 1 to n do
        for j := 1 to n do
            read(w[i, j]);
end;

function pode_tomar(var w: matriz; i, j: longint): boolean;
var
  tomar: boolean;
begin
  tomar := false;
  
  if (i < n - 1) and (j > 1) and (w[i + 1, j - 1] = 1) and (w[i + 2, j - 2] = 0) then
      tomar := true
  else if (i < n - 1) and (j < n - 1) and (w[i + 1, j + 1] = 1) and (w[i + 2, j + 2] = 0) then
      tomar := true;
  
  pode_tomar := tomar;
end;

function pode_mover(var w: matriz; i, j: longint): boolean;
var mover: boolean;
begin
  mover := false;
  
  if (i < n) and (j > 1) and (w[i + 1, j - 1] = 0) then
      mover := true
  else if (i < n) and (j < n) and (w[i + 1, j + 1] = 0) then
      mover := true;
  
  pode_mover := mover;
end;

procedure verificar_acoes_pretas(var w: matriz);
var
    i, j: longint;
    tomou, moveu, ficou: boolean;
begin
    tomou := false;
    moveu := false;
    ficou := false;
    
    write('tomar: ');
    for i := 1 to n do
        for j := 1 to n do
            if (w[i, j] = -1) and pode_tomar(w, i, j) then
            begin
                write(i, '-', j, ' ');
                tomou := true;
            end;
    
    if not tomou then
        write('0');
    
    writeln();
    
    write('mover: ');
    for i := 1 to n do
        for j := 1 to n do
            if (w[i, j] = -1) and pode_mover(w, i, j) and (not pode_tomar(w, i, j)) then
            begin
                write(i, '-', j, ' ');
                moveu := true;
            end;
    
    if not moveu then
        write('0');
        
    writeln();
    
    write('ficar: ');
    for i := 1 to n do
        for j := 1 to n do
            if (w[i, j] = -1) and (not pode_tomar(w, i, j)) and (not pode_mover(w, i, j)) then
            begin
                write(i, '-', j, ' ');
                ficou := true;
            end;
            
    if not ficou then
        write('0');
end;

begin
    ler_matriz(w);
    verificar_acoes_pretas(w);
end.
