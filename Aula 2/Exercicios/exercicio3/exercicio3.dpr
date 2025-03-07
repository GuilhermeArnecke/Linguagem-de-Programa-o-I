program exercicio3;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  nomes: array[0..2] of string;
  idades: array[0..2] of Integer;
  i, result: Integer;

begin
  try
    result := 0;
    for i := 0 to 2 do
      begin
        Writeln(Format('Insira o nome de valor %d e depois a idade de valor %d', [i + 1, i + 1]));
        ReadLn(nomes[i], idades[i]);
        result := result + idades[i];
      end;

      WriteLn(Format('%s, %s e %s juntos tem %d anos', [nomes[0], nomes[1], nomes[2], result] ));
      Readln;

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
