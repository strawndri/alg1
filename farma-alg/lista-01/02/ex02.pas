program segundos_para_horas_minutos_segundos;
var
    numero, horas: longint;
    minutos, segundos, segundos_restantes: integer;
begin
    read(numero);
    
    horas := numero div 3600;
    segundos_restantes := numero mod 3600;
    
    minutos := segundos_restantes div 60;
    segundos_restantes := segundos_restantes mod 60;
    
    segundos := segundos_restantes;
    
    write(horas, ':', minutos, ':', segundos);
end.