program graus_min_seg;
var
    numero, graus, minutos, segundos: integer;
    segundos_restantes: integer;
begin
    write('> Digite um número inteiro: ');
    read(numero);
    
    graus := numero div 3600;
    segundos_restantes := numero mod 3600;
    
    minutos := segundos_restantes div 60;
    segundos_restantes := segundos_restantes mod 60;
    
    segundos := segundos_restantes;
    
    write(graus, ', ', minutos, ', ', segundos);
end.