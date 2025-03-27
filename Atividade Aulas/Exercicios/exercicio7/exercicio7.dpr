program exercicio7;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  a, b, c: double;
  inta, intb, intc: Integer;

begin
  try
    Writeln('Por favor insira 3 numeros para as operações');
    Readln(a, b, c);

    inta := Trunc(a);
    intb := Trunc(b);
    intc := Trunc(c);

    Writeln(Format('%.0f + %.0f + %.0f = %.0f', [a, b, c, (a + b + c)]));
    Writeln(Format('%.0f - %.0f + %.0f = %.0f', [a, b, c, (a - b + c)]));
    Writeln(Format('%.0f - (%.0f + %.0f) = %.0f', [a, b, c, (a - (b + c))]));
    Writeln(Format('(%.0f * 2) + (%.0f - %.0f) = %.0f', [a, b, c, ((a * 2) + (b - c))]));
    Writeln(Format('(%.0f * 4) + (%.2f / 2) - (%.0f + 8) = %.2f', [a, c, b, ((a * 4) + (c / 2) - (b + 8))]));
    Writeln(Format('(%.2f / 2) + (%.2f / 2) + (%.2f / 8) = %.2f', [a, b, c, ((a / 2) + (b / 2) + (c / 2))]));
    Writeln(Format('%.0f² + %.0f² = %.0f', [a, b, Sqr(a) + Sqr(b)]));
    Writeln(Format('%.0f² + 3 * %.0f = %.0f', [a, b, (Sqr(c) + 3) * b]));
    Writeln(Format('%d MOD 2 = %d', [inta, inta mod 2]));
    Writeln(Format('%d MOD 2 = %d', [intb, intb mod 2]));
    Writeln(Format('%d MOD 2 = %d', [intc, intc mod 2]));
    Readln;

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
