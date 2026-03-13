program ProjetoAula1;

uses
  Vcl.Forms,
  UnPrincipal in 'UnPrincipal.pas' {Form1},
  UnDMPrincipal in 'UnDMPrincipal.pas' {DMPrincipal: TDataModule},
  UnFormCadastroCidades in 'UnFormCadastroCidades.pas' {FormCadastroCidade},
  UnDMCadastroCidades in 'UnDMCadastroCidades.pas' {DMCadastroCidades: TDataModule},
  UnDMCadastroCurso in 'UnDMCadastroCurso.pas' {DMCadastroCurso: TDataModule},
  UnFormCadastroCurso in 'UnFormCadastroCurso.pas' {FormCadastroCurso},
  UnRelatorioCidades in 'UnRelatorioCidades.pas' {FormRelatoriosCidadesPadrao},
  UnFormFiltroRelatorioCidades in 'UnFormFiltroRelatorioCidades.pas' {FormFiltroRelatorioCidades},
  UnFormRelatorioCidades in 'UnFormRelatorioCidades.pas' {FormRelatorioCidades};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDMPrincipal, DMPrincipal);
  Application.Run;
end.
