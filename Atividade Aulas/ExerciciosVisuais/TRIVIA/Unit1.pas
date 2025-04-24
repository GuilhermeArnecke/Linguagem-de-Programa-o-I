unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Generics.Collections, System.IOUtils;

type
  TFormMain = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    Contador: TLabel;
    PanelGlobal: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    FPaises: TList<string>;
    FContadorAcertos: Integer;
    procedure CriarObjetosPaises;
    function CriptografarPalavra(APalavra: string): string;
    procedure Pesquisar;
    procedure RestaurarCorEdit;
    procedure AtualizarContador;
  public
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

procedure TFormMain.CriarObjetosPaises;
const
  PALAVRAS_POR_PANEL = 25;
var
  Panel: TPanel;
  Pais: TLabel;
begin
  for var I := 0 to FPaises.Count - 1 do
  begin
    if (I = 0) or (I mod PALAVRAS_POR_PANEL = 0) then
    begin
      Panel := TPanel.Create(Self);
      Panel.Parent := PanelGlobal;
      Panel.Align := alLeft;
      Panel.Width := 300;
    end;

    Pais := TLabel.Create(Self);
    Pais.Parent := Panel;
    Pais.Align := alTop;
    Pais.Alignment := taCenter;
    Pais.Font.Size := 12;
    Pais.Caption := CriptografarPalavra(FPaises.Items[I]);
  end;
end;

function TFormMain.CriptografarPalavra(APalavra: string): string;
var
  ConjuntoPalavras: TArray<string>;
begin
  Result := '';
  ConjuntoPalavras := Trim(APalavra).Split([' ', '-']);
  for var Palavra in ConjuntoPalavras do
  begin
    var PalavraCriptografada := UpperCase(Palavra[1]) +
      StringOfChar('?', Length(Palavra) - 1);
    if Result = '' then
      Result := PalavraCriptografada
    else
      Result := Result + ' ' + PalavraCriptografada;
  end;
end;

procedure TFormMain.Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    Pesquisar;
end;

procedure TFormMain.FormCreate(Sender: TObject);
var
  ListaPaises: TArray<string>;
begin
  ListaPaises := TFile.ReadAllLines('C:\Users\guilh\Documents\GitHub\Delphi\Atividade Aulas\ExerciciosVisuais\TRIVIA\Paises.txt');
  FPaises := TList<string>.Create(ListaPaises);

  FContadorAcertos := 0;
  Contador.Caption := 'Acertos: ' + IntToStr(FContadorAcertos);

  CriarObjetosPaises;
end;

procedure TFormMain.Pesquisar;
var
  PalavraInserida: string;
  Panel: TPanel;
  Pais: TLabel;
  PanelIndex, LabelIndex: Integer;
begin
  PalavraInserida := Trim(Edit1.Text);

  for var I := 0 to FPaises.Count - 1 do
  begin
    if SameText(PalavraInserida, FPaises.Items[I]) then
    begin
      PanelIndex := I div 25;
      LabelIndex := I mod 25;

      if (PanelIndex < PanelGlobal.ControlCount) and
         (PanelGlobal.Controls[PanelIndex] is TPanel) then
      begin
        Panel := PanelGlobal.Controls[PanelIndex] as TPanel;
        if (LabelIndex < Panel.ControlCount) and
           (Panel.Controls[LabelIndex] is TLabel) then
        begin
          Pais := Panel.Controls[LabelIndex] as TLabel;
          Pais.Caption := FPaises.Items[I];
          Pais.Font.Style := [fsUnderline];

          Edit1.Clear;

          AtualizarContador;
          Exit;
        end;
      end;
    end;
  end;

  Edit1.Color := clRed;
  TThread.CreateAnonymousThread(
    procedure
    begin
      Sleep(1000);
      TThread.Synchronize(nil, RestaurarCorEdit);
    end).Start;
end;

procedure TFormMain.AtualizarContador;
begin
  Inc(FContadorAcertos);
  Contador.Caption := 'Acertos: ' + IntToStr(FContadorAcertos);
end;

procedure TFormMain.RestaurarCorEdit;
begin
  Edit1.Color := clWindow;
end;

end.
