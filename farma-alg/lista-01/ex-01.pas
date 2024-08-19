{*
Dado um número inteiro que representa uma quantidade de segundos, faça um programa 
que imprima o seu valor equivalente em horas, minutos e segundos, nesta ordem. Se a 
quantidade de segundos for insuficiente para dar um valor em horas, o valor em horas 
deve ser 0 (zero). A mesma observação vale em relação aos minutos e segundos. 
*}

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
