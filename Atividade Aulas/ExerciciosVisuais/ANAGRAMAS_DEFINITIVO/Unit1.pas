unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Generics.Collections, System.IOUtils;

type
  TPalavra = record
    id: Integer;
    Objeto: TObject end;

    TForm1 = class(TForm)BigBack: TPanel;
    Painel_de_Respostas: TPanel;
    Painel_de_Letras: TPanel;
    Painel_de_Palavras: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Dica: TButton;
    Embaralhar: TButton;
    Limpar: TButton;
    procedure Carregamento(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure EmbaralharClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure LimparClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DicaClick(Sender: TObject);
  private
    FPalavras: TList<string>;
    procedure CarregarBotoes;
    procedure EmbaralharLetras(var LetraBotao: array of String);
    procedure CriarObjetosPalavras;
    function CriptografarPalavras(APalavra: string): string;
    procedure Pesquisar;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  NovaDica: array [0 .. 20] of Integer;
  NumeroDicas: Integer;
  PalavraChave: array [0 .. 20] of TPalavra;
  LetraBotao: array [0 .. 6] of string = (
    'G',
    'O',
    'E',
    'I',
    'U',
    'C',
    'R'
  );

implementation

{$R *.dfm}

procedure TForm1.Carregamento(Sender: TObject);
begin
  CarregarBotoes;
end;

procedure TForm1.CarregarBotoes;
begin
  LimparClick(Limpar);
  EmbaralharClick(Embaralhar);
  Button1Click(Button1);
  Button2Click(Button2);
  Button3Click(Button3);
  Button4Click(Button4);
  Button5Click(Button5);
  Button6Click(Button6);
  Button7Click(Button7);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if Button1.Enabled then
  begin
    Painel_de_Respostas.Caption := Painel_de_Respostas.Caption + LetraBotao[0];
    Button1.Enabled := False;
    Pesquisar;
  end
  else
  begin
    Painel_de_Respostas.Caption := StringReplace(Painel_de_Respostas.Caption,
      LetraBotao[0], '', []);
    Button1.Enabled := True;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if Button2.Enabled then
  begin
    Painel_de_Respostas.Caption := Painel_de_Respostas.Caption + LetraBotao[1];
    Button2.Enabled := False;
    Pesquisar;
  end
  else
  begin
    Painel_de_Respostas.Caption := StringReplace(Painel_de_Respostas.Caption,
      LetraBotao[1], '', []);
    Button2.Enabled := True;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  if Button3.Enabled then
  begin
    Painel_de_Respostas.Caption := Painel_de_Respostas.Caption + LetraBotao[2];
    Button3.Enabled := False;
    Pesquisar;
  end
  else
  begin
    Painel_de_Respostas.Caption := StringReplace(Painel_de_Respostas.Caption,
      LetraBotao[2], '', []);
    Button3.Enabled := True;
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  if Button4.Enabled then
  begin
    Painel_de_Respostas.Caption := Painel_de_Respostas.Caption + LetraBotao[3];
    Button4.Enabled := False;
    Pesquisar;
  end
  else
  begin
    Painel_de_Respostas.Caption := StringReplace(Painel_de_Respostas.Caption,
      LetraBotao[3], '', []);
    Button4.Enabled := True;
  end;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  if Button5.Enabled then
  begin
    Painel_de_Respostas.Caption := Painel_de_Respostas.Caption + LetraBotao[4];
    Button5.Enabled := False;
    Pesquisar;
  end
  else
  begin
    Painel_de_Respostas.Caption := StringReplace(Painel_de_Respostas.Caption,
      LetraBotao[4], '', []);
    Button5.Enabled := True;
  end;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  if Button6.Enabled then
  begin
    Painel_de_Respostas.Caption := Painel_de_Respostas.Caption + LetraBotao[5];
    Button6.Enabled := False;
    Pesquisar;
  end
  else
  begin
    Painel_de_Respostas.Caption := StringReplace(Painel_de_Respostas.Caption,
      LetraBotao[5], '', []);
    Button6.Enabled := True;
  end;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  if Button7.Enabled then
  begin
    Painel_de_Respostas.Caption := Painel_de_Respostas.Caption + LetraBotao[6];
    Button7.Enabled := False;
    Pesquisar;
  end
  else
  begin
    Painel_de_Respostas.Caption := StringReplace(Painel_de_Respostas.Caption,
      LetraBotao[6], '', []);
    Button7.Enabled := True;
  end;
end;

procedure TForm1.LimparClick(Sender: TObject);
begin
  Painel_de_Respostas.Caption := '';
  Button1.Enabled := True;
  Button2.Enabled := True;
  Button3.Enabled := True;
  Button4.Enabled := True;
  Button5.Enabled := True;
  Button6.Enabled := True;
  Button7.Enabled := True;
end;

procedure TForm1.EmbaralharClick(Sender: TObject);
begin
  LimparClick(Limpar);
  EmbaralharLetras(LetraBotao);
end;

procedure TForm1.EmbaralharLetras(var LetraBotao: array of String);
var
  i, j: Integer;
  temp: string;
begin
  Randomize;
  for i := High(LetraBotao) downto Low(LetraBotao) + 1 do
  begin
    j := Random(i + 1);
    temp := LetraBotao[i];
    LetraBotao[i] := LetraBotao[j];
    LetraBotao[j] := temp;
  end;

  Button1.Caption := LetraBotao[0];
  Button2.Caption := LetraBotao[1];
  Button3.Caption := LetraBotao[2];
  Button4.Caption := LetraBotao[3];
  Button5.Caption := LetraBotao[4];
  Button6.Caption := LetraBotao[5];
  Button7.Caption := LetraBotao[6];
end;

// ______________________________________________________________________________

procedure TForm1.CriarObjetosPalavras;
const
  PALAVRAS_POR_PANEL = 7;
var
  Panel: TPanel;
  Palavra: TLabel;
begin
  NumeroDicas := 3;
  for var i := 0 to FPalavras.Count - 1 do
  begin
    if (i = 0) or (i mod PALAVRAS_POR_PANEL = 0) then
    begin
      Panel := TPanel.Create(Self);
      Panel.Parent := Painel_de_Palavras;
      Panel.Align := alLeft;
      Panel.Alignment := taCenter;
      Panel.Width := 550;
      Panel.Font.Size := 20;
    end;

    Palavra := TLabel.Create(Self);
    Palavra.Parent := Panel;
    Palavra.Align := alTop;
    Palavra.Alignment := taCenter;
    Palavra.Font.Size := 20;
    Palavra.Caption := CriptografarPalavras(FPalavras.Items[i]);
    Palavra.Name := 'Palavra_' + i.ToString;
  end;
end;

function TForm1.CriptografarPalavras(APalavra: string): string;
var
  PalavraLimpa: string;
begin
  PalavraLimpa := Trim(APalavra);
  Result := StringOfChar('*', Length(PalavraLimpa));
end;

procedure TForm1.DicaClick(Sender: TObject);
begin
  if NumeroDicas > 0 then
  begin
    for var i := 0 to FPalavras.Count - 1 do
    begin
      if (NovaDica[i] <> 1) then
      begin
        TLabel(FindComponent('Palavra_' + i.ToString)).Caption := FPalavras[i];
        LimparClick(Limpar);
        NovaDica[i] := 1;
        break;
      end;
    end;
    NumeroDicas := NumeroDicas - 1;
    ShowMessage('Você tem mais ' + NumeroDicas.ToString + ' Dicas...');
  end
  else
  begin
    ShowMessage('Você não tem mais dicas...');
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  ListaPalavras: TArray<string>;
begin
  ListaPalavras := TFile.ReadAllLines
    ('C:\Users\guilh\Documents\GitHub\Delphi\Atividade Aulas\ExerciciosVisuais\ANAGRAMAS_DEFINITIVO\Palavras.txt');
  FPalavras := TList<string>.Create(ListaPalavras);

  CriarObjetosPalavras;
end;

procedure TForm1.Pesquisar;
var
  PalavraInserida: string;
begin
  PalavraInserida := Painel_de_Respostas.Caption;
  for var i := 0 to FPalavras.Count - 1 do
  begin
    if (PalavraInserida = FPalavras[i]) then
    begin
      TLabel(FindComponent('Palavra_' + i.ToString)).Caption := PalavraInserida;
      LimparClick(Limpar);
      NovaDica[i] := 1;
    end;
  end;
end;

end.
