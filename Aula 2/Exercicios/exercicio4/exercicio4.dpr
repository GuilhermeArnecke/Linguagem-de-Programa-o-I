program exercicio4;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  idade: Integer;

begin
  try
    Writeln('Insira a idade do Jogador');
    Readln(idade);

    case idade of
    0 .. 4:
      Writeln('Idade Inválida');
    5 .. 7:
      Writeln('Infantil A');
    8 .. 10:
      Writeln('Infantil B');
    11 .. 13:
      Writeln('Juvenil A');
    14 .. 17:
      WriteLn('Juvenil B');
    else
      Writeln('Adulto');
    end;

    Readln;

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
