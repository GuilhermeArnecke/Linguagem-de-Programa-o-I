unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.ComCtrls, System.Generics.Collections, System.Hash, System.Math;

type
  TCadastro = class(TForm)
    Panel1: TPanel;
    StringGrid1: TStringGrid;
    StaticText1: TStaticText;
    Edit1: TEdit;
    MaskEdit1: TMaskEdit;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    Edit2: TEdit;
    StaticText4: TStaticText;
    Edit3: TEdit;
    DateTimePicker1: TDateTimePicker;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    Button1: TButton;
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    FCodigo: Integer;
    LinhaAtual: Integer;
    ColunaAtual: Integer;
    procedure AjustarLarguraColunas(Grid: TStringGrid);
    function GerarHashSenha(const Senha: string): string;
  public
    { Public declarations }
  end;

var
  Cadastro: TCadastro;

implementation

{$R *.dfm}

procedure TCadastro.AjustarLarguraColunas(Grid: TStringGrid);
var
  i, j: Integer;
  Largura: Integer;
begin
  for i := 0 to Grid.ColCount - 1 do
  begin
    Largura := 0;
    for j := 0 to Grid.RowCount - 1 do
    begin
      Largura := Max(Largura, Grid.Canvas.TextWidth(Grid.Cells[i, j]));
    end;
    Grid.ColWidths[i] := Largura + 10;
  end;
end;

function TCadastro.GerarHashSenha(const Senha: string): string;
begin
  Result := THashSHA2.GetHashString(Senha);
end;

procedure TCadastro.Button1Click(Sender: TObject);
var
  i: Integer;
  RadioSelecionado: String;
begin
  i := 0;

  if (Edit1.Text <> '') and (Edit2.Text <> '') and (MaskEdit1.Text <> '') and (Edit3.Text <> '') then
  begin

    if RadioButton1.Checked then
      RadioSelecionado := 'Usuário Comum'
    else if RadioButton2.Checked then
      RadioSelecionado := 'Administrador'
    else
    begin
      ShowMessage('Erro: Usuário não especificado');
      Exit;
    end;


    if StringGrid1.RowCount = LinhaAtual then
    begin
      StringGrid1.RowCount := StringGrid1.RowCount + 1;
    end;


    StringGrid1.Cells[i, LinhaAtual] := FCodigo.ToString; Inc(i);
    StringGrid1.Cells[i, LinhaAtual] := Edit1.Text; Inc(i); Edit1.Clear;
    StringGrid1.Cells[i, LinhaAtual] := Edit2.Text; Inc(i); Edit2.Clear;
    StringGrid1.Cells[i, LinhaAtual] := MaskEdit1.Text; Inc(i); MaskEdit1.Clear;
    StringGrid1.Cells[i, LinhaAtual] := DateTimeToStr(DateTimePicker1.DateTime); Inc(i);
    GerarHashSenha(Edit3.Text); Edit3.Clear;
    StringGrid1.Cells[i, LinhaAtual] := RadioSelecionado; Inc(i);


    Inc(LinhaAtual);
    Inc(FCodigo);


    AjustarLarguraColunas(StringGrid1);
  end
  else
  begin
    ShowMessage('Nem todos os campos foram preenchidos...');
  end;
end;

procedure TCadastro.FormCreate(Sender: TObject);
begin
  FCodigo := 0;
  LinhaAtual := 1;
  ColunaAtual := 5;

  StringGrid1.ColCount := ColunaAtual + 1;
  StringGrid1.Cells[0, 0] := 'Código';
  StringGrid1.Cells[1, 0] := 'Nome';
  StringGrid1.Cells[2, 0] := 'E-mail';
  StringGrid1.Cells[3, 0] := 'Telefone';
  StringGrid1.Cells[4, 0] := 'Aniversário';
  StringGrid1.Cells[5, 0] := 'Tipo Usuário';
end;

end.

