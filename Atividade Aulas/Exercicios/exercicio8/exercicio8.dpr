program exercicio8;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  numValores, i, j, temp: Integer;
  valores: array of Integer;

begin
  try
    Writeln('Por favor, digite quantos números queres que sua lista tenha:');
    Readln(numValores);

    SetLength(valores, numValores);

    for i := 0 to numValores - 1 do
      begin
        Writeln(Format('Insira o seu número (%d)', [i + 1]));
        Readln(valores[i]);
      end;

    for i := 0 to numValores - 1 do
      begin
        for j := 0 to numValores - 2 do
          if valores[j] > valores[j + 1] then
              begin
                temp := valores[j];
                valores[j] := valores[j + 1];
                valores[j + 1] := temp;
              end;
        end;

      Writeln('Sua lista de valores organizada fica:');
      for i := 0 to numValores - 1 do
        begin
          Writeln(valores[i]);
        end;
      Readln;

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
