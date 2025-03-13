program exercicio6;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  x, y: Double;

begin
  try
    Writeln('Por favor insira dois números para as operações');
    Readln(x, y);

    Writeln(Format('O valor de %.0f + %.0f = %.0f', [x, y, (x + y)]));
    Writeln(Format('O valor de %.0f - %.0f = %.0f', [x, y, (x - y)]));
    Writeln(Format('O valor de %.0f * %.0f = %.0f', [x, y, (x * y)]));
    Writeln(Format('O valor de %.0f / %.0f = %f', [x, y, (x / y)]));
    Readln
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
