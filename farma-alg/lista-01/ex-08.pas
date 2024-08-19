{*
Faça um programa Pascal que leia um número inteiro e imprima o seu sucessor
e seu antecessor, na mesma linha.
*}

program sucessor_antecessor;
var
    numero, sucessor, antecessor: integer;
begin
    read(numero);

    sucessor := numero + 1;
    antecessor := numero - 1;

    write(sucessor, ' ', antecessor);
end.
