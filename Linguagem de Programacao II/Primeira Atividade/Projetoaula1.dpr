program Projetoaula1;

uses
  Vcl.Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {Form1},
  UnDMPrincipal in 'UnDMPrincipal.pas' {DMPrincipal: TDataModule},
  UnFormCadastroCidades in 'UnFormCadastroCidades.pas' {FormCadastroCidade};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDMPrincipal, DMPrincipal);
  Application.Run;
end.
