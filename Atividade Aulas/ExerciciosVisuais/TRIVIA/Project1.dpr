program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {TRIVIA};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
