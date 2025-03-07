program Aula2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

const
  MinhaConstante = 'Vai toma no CU';

var
  MeuTexto: string;
  TesteDeAtribuicao: integer;

begin
  try

    Writeln('Digite qualquer firula:');
    Readln(MeuTexto);

    Writeln('A palavra escolhida foi:' + MeuTexto);
    TesteDeAtribuicao := 4;
    Writeln(TesteDeAtribuicao);

    Readln;


  except
    Writeln(MinhaConstante);

  end;
end.
