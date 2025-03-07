program exercicio5;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
//Altura
h, result: Double;
genero: string;

begin
  try
    WriteLn('Insira a sua altura');
    ReadLn(h);
    Writeln('Insira o seu genero podendo ser M para Masculino ou F para Feminino');
    Readln(genero);
    if (genero = 'M') then
      begin
        result := (72.7 * h) - 58;
      end
    else if genero = 'F' then
      begin
        result := (62.1 * h) - 44.7;
      end
    else
      begin
        Writeln('Genero não existe, insira um genero valido');
      end;

    Writeln(Format('O seu peso ideal é %.1f', [result]));
    ReadLn;


  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
