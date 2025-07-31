program MeuProjeto;

uses
  Vcl.Forms,
  MeuProjeto.Principal in 'MeuProjeto.Principal.pas' {MeuProjetoPrincipal},
  MeuProjeto.DataBase in 'MeuProjeto.DataBase.pas' {FDQuery1: TDataModule},
  OutraParada in 'OutraParada.pas' {Form1};

{$R *.res}


begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMeuProjetoPrincipal, MeuProjetoPrincipal);
  Application.CreateForm(TFDQuery1, FDQuery1);
  Application.CreateForm(TForm1, Form1);
  Application.Run;

end.
