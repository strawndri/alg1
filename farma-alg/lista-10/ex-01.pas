{*
Um vetor real X com n elementos é apresentado como resultado de um sistema de equações 
lineares Ax = B cujos coeficientes são representados em uma matriz real A(m×n) e os 
lados direitos das equações (os resultados de cada equação) em um vetor real B de m 
elementos. Criar um programa em Free Pascal que verifique se o vetor X é realmente 
solução do sistema dado, imprimindo "sim" caso o vetor informado seja solução do 
sistema de equações, ou imprimindo "não" caso contrário.

Dica: Comparações entre números reais pode ser um problema dependendo da arquitetura
da máquina a ser utilizada. Para solucionar este problema um método a ser utilizado
é a comparação por margem de erro.
*}

program quadrado_magico_1;
type 
    matriz = array[1..100, 1..100] of real;
    vetor = array[1..100] of real;
var
    m, n: longint;
    x, b: vetor;
    w: matriz;

procedure ler_vetor(var v: vetor; m: longint);
var
    i: longint;
begin
    for i := 1 to n do
        read(v[i]);
end;

procedure ler_matriz(var w: matriz; n: longint);
var
    i, j: longint;
begin
    for i := 1 to n do
        for j := 1 to n do
            read(w[i, j]);
end;

function eh_solucao(var w: matriz; var v_solucao, v_resultado: vetor; m, n: longint): boolean;
var
    i, j: longint;
    resultado: real;
    eh_s: boolean;
begin
    eh_s := true;
    
    for i := 1 to n do
    begin
        resultado := 0;
        
        for j := 1 to n do 
            resultado := resultado + (w[i, j] * v_solucao[j]);
            
        if (resultado <> v_resultado[i]) then
        begin
            eh_s := false;
            break;
        end;
    end;
    
    eh_solucao := eh_s;
end;

begin
    read(m, n);
    ler_vetor(x, m);
    ler_matriz(w, n);
    ler_vetor(b, m);
    
    if (eh_solucao(w, x, b, m, n)) then
        writeln('sim')
    else
        writeln('nao');
end.
