program VisualProject1;

uses
  Vcl.Forms,
  VisualProjectGroup in 'VisualProjectGroup.pas' {FormPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.
