program exercicio1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  result: Double;
  values: array[0..2] of Double;
  i: Integer;

begin
  try

    for i := 0 to 2 do
      begin
        WriteLn(Format('Insira o valor de número %d', [i + 1]));
        Readln(values[i]);
      end;

    result := (values[0] + values[1] + values[2]) / 4;
    WriteLn(Format('A média do seu número é %.4f', [result]));
    Readln;




  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
