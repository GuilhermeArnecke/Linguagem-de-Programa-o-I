program exercicio2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  nome: string;
  idade: Integer;

begin
  try
    Writeln('Insira seu nome');
    Readln(nome);
    Writeln('Insira sua idade');
    Readln(idade);

    Writeln(Format('Ol� %s. Atualmente voc� possui %d anos. Daqui a 5 anos voc� ter� %d anos', [nome, idade, idade + 5]));
    Readln;

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
