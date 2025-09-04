program ProjetoAula1;

uses
  Vcl.Forms,
  UnPrincipal in 'UnPrincipal.pas' {Form1},
  UnDMPrincipal in 'UnDMPrincipal.pas' {DMPrincipal: TDataModule},
  UnFormCadastroCidades in 'UnFormCadastroCidades.pas' {FormCadastroCidade},
  UnDMCadastroCidades in 'UnDMCadastroCidades.pas' {DMCadastroCidades: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDMPrincipal, DMPrincipal);
  Application.Run;
end.
