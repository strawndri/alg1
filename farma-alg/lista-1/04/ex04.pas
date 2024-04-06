program volume_esfera;
var
    diametro, pi, raio, volume: real;
begin
    pi := 3.14;
    
    read(diametro);
    
    raio := diametro/2;
    volume := 4 * pi * (raio * raio * raio) / 3;
    
    write(volume:0:2);
end.