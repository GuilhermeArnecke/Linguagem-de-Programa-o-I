program exercicio10;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  repetindo: Integer;
  a, b, resultado: Double;

begin
  try
    repetindo := 0;
    Writeln('Por favor insira dois números:');
    Readln(a, b);

    repeat
       Writeln('Escolha uma das opções');
       Writeln(Format('1- Subtraia o valor %.0f de %.0f', [b, a]));
       Writeln(Format('2- Somar %.0f e %.0f', [a, b]));
       Writeln(Format('3- Multiplicar %.0f e %.0f', [a, b]));
       Writeln('4- Mostrar qual o maior número');
       Writeln('5- Sair');
       Readln(repetindo);

       case repetindo of
        1: begin
             resultado := a - b;
             Writeln(Format('Resultado = %.0f', [resultado]));
           end;
        2: begin
             resultado := a + b;
             Writeln(Format('Resultado = %.0f', [resultado]));
           end;
        3: begin
             resultado := a * b;
             Writeln(Format('Resultado = %.0f', [resultado]));
           end;
        4: begin
             if a > b then
               Writeln(Format('Resultado = %.0f', [a]))
             else if a < b then
               Writeln(Format('Resultado = %.0f', [b]))
             else
               Writeln('Resultado = Os dois são iguais');
           end;
        5: begin
             Break;
           end;
       end;

       Readln
    until repetindo = 5;

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
