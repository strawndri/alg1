program trocar_valores;
var 
    numero_1, numero_2: real;
begin
    write('> Digite dois números, separano-os por um espaço: ');
    read(numero_1, numero_2);
    
    numero_1 := numero_1 + numero_2;
    numero_2 := numero_1 - numero_2;
    numero_1 := numero_1 - numero_2;
    
    write(numero_1:0:1, ' ', numero_2:0:1);
end.