program compara_datas;
var dia1, mes1, ano1, dia2, mes2, ano2: longint;

function eh_anterior(dia1, mes1, ano1, dia2, mes2, ano2: longint): boolean;
begin
  eh_anterior := false;
  
  if (ano1 < ano2) then
    eh_anterior := true
  else
    if (mes1 < mes2) then
      eh_anterior := true
    else
      if (dia1 < dia2) then
        eh_anterior := true;
end;

begin
  read(dia1, mes1, ano1, dia2, mes2, ano2);
  
  if eh_anterior(dia1, mes1, ano1, dia2, mes2, ano2) then
    writeln('a primeira data é anterior')
  else
    writeln('a primeira data não é anterior');
end.
