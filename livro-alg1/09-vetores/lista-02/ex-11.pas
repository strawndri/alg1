program exercito;
type
    vetor = array[1..20] of longint;

var
    regimentos, status: vetor;
    i, semana, enviado: longint;

procedure inicializar_regimentos(var regimentos, status: vetor);
var
    i, homens: longint;
begin
    homens := 1000;
    for i := 1 to 20 do
    begin
        regimentos[i] := homens;
        status[i] := 0;
        homens := homens - 50;
    end;    
end;

function enviar_front(var regimentos: vetor): longint;
var
    i, i_maior_regimento: longint;
begin
    i_maior_regimento := 1;
    for i := 2 to 20 do
    begin
        if (regimentos[i] > regimentos[i_maior_regimento]) then
            i_maior_regimento := i;
    end;
    enviar_front := i_maior_regimento;
end;

procedure atualizar_regimentos(var regimentos: vetor; enviado: longint);
var
    i: longint;
begin
    for i := 1 to 20 do
    begin
        if (i = 5) then
            regimentos[i] := regimentos[i] + 30
        else if (i = enviado) then
            regimentos[i] := 50
        else
            regimentos[i] := regimentos[i] + 100;
    end;
end;

procedure atualizar_status(var status: vetor; enviado: longint);
begin
    status[enviado] := 1;
end;

begin
    semana := 1;
    inicializar_regimentos(regimentos, status);
    
    while (status[5] = 0) do
    begin
        enviado := enviar_front(regimentos);
        writeln('======= Semana ', semana, ' =======');
        writeln('O regimento ', enviado, ' foi para o front com ', regimentos[enviado], ' homens');
        writeln('-------- Status --------');
        
        for i := 1 to 20 do
        begin
            if (status[i] = 0) then
              writeln('Regimento ', i:2, ' (', regimentos[i], ' homens)', ': a enviar')
            else
              writeln('Regimento ', i:2, ' (', regimentos[i], ' homens)', ': enviado')
        end;

        atualizar_regimentos(regimentos, enviado);
        atualizar_status(status, enviado);
        semana := semana + 1;
    end;
    
    writeln('O regimento 5 foi para o front em ', semana - 1, ' semanas.');
end.
 
