unit UnFormCadastroCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, UnDMCadastroCidades, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TFormCadastroCidade = class(TForm)
    BtnNovo: TButton;
    BtnExcluir: TButton;
    BtnCancelar: TButton;
    BtnSalvar: TButton;
    DBGrid1: TDBGrid;
    DsCidades: TDataSource;
    DBEdit1: TDBEdit;
    lblID: TLabel;
    LblNomeCidade: TLabel;
    DBEdit2: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DsEstados: TDataSource;
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
  DMCadastroCidades: TDMCadastroCidades;

implementation

{$R *.dfm}

procedure TFormCadastroCidade.BtnCancelarClick(Sender: TObject);
begin
  DMCadastroCidades.QryCadastroCidades.Cancel;
end;

procedure TFormCadastroCidade.BtnExcluirClick(Sender: TObject);
begin
  DMCadastroCidades.QryCadastroCidades.Delete;
end;

procedure TFormCadastroCidade.BtnNovoClick(Sender: TObject);
begin
  DMCadastroCidades.QryCadastroCidades.Append;
end;

procedure TFormCadastroCidade.BtnSalvarClick(Sender: TObject);
begin
  if DMCadastroCidades.QryCadastroCidades.State in [dsEdit, dsInsert] then
    DMCadastroCidades.QryCadastroCidades.Post;

  DMCadastroCidades.QryCadastroCidades.ApplyUpdates;
end;

procedure TFormCadastroCidade.FormShow(Sender: TObject);
begin
  DMCadastroCidades := TDMCadastroCidades.Create(self);

  DMCadastroCidades.QryCadastroCidades.close;

  DMCadastroCidades.QryCadastroCidades.SQL.Clear;
  DMCadastroCidades.QryCadastroCidades.SQL.Add('SELECT * FROM CIDADES');
  DMCadastroCidades.QryCadastroCidades.Open;
  DMCadastroCidades.QryCadastroCidades.IndexFieldNames := 'ID_CIDADE';

  DMCadastroCidades.QryEstados.close;
  DMCadastroCidades.QryEstados.SQL.Clear;
  DMCadastroCidades.QryEstados.SQL.Add('SELECT * FROM ESTADOS');
  DMCadastroCidades.QryEstados.Open;

end;

end.
