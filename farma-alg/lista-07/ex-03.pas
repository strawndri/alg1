{*
Faça um programa que leia uma sequência de códigos de operação e valor, onde o código
de operação é um inteiro com os seguintes valores:

0 (zero): fim
1 (um): inserção
2 (dois): remoção

O valor lido é um número real que deve ser inserido em um vetor (caso a operação
seja 1), ou removido do vetor (caso a operação seja 2). As inserções no vetor devem
ser realizadas de forma que o vetor esteja sempre ordenado. O programa deve imprimir 
todos os vetores resultantes de cada operação e ao final deve imprimir o vetor 
resultante. Imprima os valores reais sempre com uma casa decimal. Caso o vetor 
esteja vazio, imprima a mensagem "vazio".

Detalhamento:

A quantidade máxima de valores que pode ser inserida é 200;

Se a quantidade máxima for ultrapassada o programa deve dar uma mensagem 
de erro (imprima a mensagem "erro");

Se for requisitada a remoção de um número não existente o programa deve dar 
uma mensagem de erro (imprima "erro");

Se o código de operação for inválido o programa deve continuar lendo um novo 
código até que ele seja 0 (zero), 1 (um) ou 2 (dois).

Use ao máximo funções e procedimentos apropriados.
*}

program operacoes_vetores;
const
    min = 1;
    max = 200;
type vetor = array [min..max] of real;
var
    cod, qtd: integer;
    numero: real;
    v: vetor;

procedure ordenar_vetor(var v: vetor; var qtd: integer);
var
    i, j: integer;
    aux: real;
begin
    for i:= 1 to qtd do
    begin
        aux := v[i];
        j := i - 1;

        while (j >= 1) and (v[j] > aux) do
        begin
            v[j+1] := v[j];
            j := j - 1;
        end;
        v[j+1] := aux;
    end;
end;

procedure imprimir_vetor(var v: vetor; var qtd: integer);
var
    i: integer;
begin

    if qtd >= 1 then
    begin
      for i := 1 to qtd do
        write(v[i]:0:1, ' ');
    end
    else
      write('vazio');

    writeln();
end;

procedure inserir(var v: vetor; var numero: real; var qtd: integer);
begin
    if qtd < 200 then
    begin
        v[qtd + 1] := numero;
        qtd := qtd + 1;
        ordenar_vetor(v, qtd);
        imprimir_vetor(v, qtd);
    end
    else
        writeln('erro');
end;

procedure remover(var v: vetor; var numero: real; var qtd: integer);
var
    k: integer;
    numero_encontrado: boolean;
begin

    k := 1;
    numero_encontrado := false;

    while (k <= qtd) and (numero_encontrado = false) do
    begin
        if v[k] = numero then
        begin
            numero_encontrado := true;
        end
        else
            k := k + 1;
    end;

    if numero_encontrado then
    begin
        for k := k to qtd do
            v[k] := v[k + 1];
        qtd := qtd - 1;
        imprimir_vetor(v, qtd);
    end
    else
        writeln('erro');
end;

begin
    read(cod);

    qtd := 0;

    while cod <> 0 do
    begin
        read(numero);

        if cod = 1 then
            inserir(v, numero, qtd)
        else if cod = 2 then
            remover(v, numero, qtd);
        read(cod);
    end;
    imprimir_vetor(v, qtd)
end.
