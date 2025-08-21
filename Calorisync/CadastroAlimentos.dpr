program CadastroAlimentos;

uses
  Vcl.Forms,
  UnitCadastroAlimentos in 'UnitCadastroAlimentos.pas' {TelaCadastroDeAlimentos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TTelaCadastroDeAlimentos, TelaCadastroDeAlimentos);
  Application.Run;
end.
