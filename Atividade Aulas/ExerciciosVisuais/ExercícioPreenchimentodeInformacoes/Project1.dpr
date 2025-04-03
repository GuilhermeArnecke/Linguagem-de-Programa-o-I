program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Cadastro};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TCadastro, Cadastro);
  Application.Run;
end.
