unit UnFormCadastroCurso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  UnDMCadastroCurso,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TFormCadastroCurso = class(TForm)
    DBGrid1: TDBGrid;
    DsCurso: TDataSource;
    BtnNovo: TButton;
    BtnExcluir: TButton;
    BtnCancelar: TButton;
    BtnSalvar: TButton;
    ID: TDBEdit;
    lblID: TLabel;
    lblCodigo: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    lblNome: TLabel;
    lblValor: TLabel;
    DBEdit3: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMCadastroCurso: TDMCadastroCurso;

implementation

{$R *.dfm}

procedure TFormCadastroCurso.BtnCancelarClick(Sender: TObject);
begin
  DMCadastroCurso.QryCadastroCurso.Cancel;
end;

procedure TFormCadastroCurso.BtnExcluirClick(Sender: TObject);
begin
  DMCadastroCurso.QryCadastroCurso.Delete;
end;

procedure TFormCadastroCurso.BtnNovoClick(Sender: TObject);
begin
  DMCadastroCurso.QryCadastroCurso.Append;
end;

procedure TFormCadastroCurso.BtnSalvarClick(Sender: TObject);
begin
  if DMCadastroCurso.QryCadastroCurso.State in [dsEdit, dsInsert] then
    DMCadastroCurso.QryCadastroCurso.Post;

  DMCadastroCurso.QryCadastroCurso.ApplyUpdates;
end;

procedure TFormCadastroCurso.FormShow(Sender: TObject);
begin
  DMCadastroCurso := TDMCadastroCurso.Create(self);

  DMCadastroCurso.QryCadastroCurso.close;

  DMCadastroCurso.QryCadastroCurso.SQL.Clear;
  DMCadastroCurso.QryCadastroCurso.SQL.Add('SELECT * FROM CURSO');
  DMCadastroCurso.QryCadastroCurso.Open;
  DMCadastroCurso.QryCadastroCurso.IndexFieldNames := 'ID_CURSO';

end;

end.
