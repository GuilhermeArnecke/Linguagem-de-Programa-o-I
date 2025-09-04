unit UnFormCadastroCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, UnDMCadastroCidades1, FireDAC.Comp.Client;

type
  TFormCadastroCidade = class(TForm)
    BtnNovo: TButton;
    BtnExcluir: TButton;
    BtnCancelar: TButton;
    BtnSalvar: TButton;
    DBGrid1: TDBGrid;
    DSMunicipios: TDataSource;
    {procedure FormShow(Sender: TObject);}
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroCidade: TFormCadastroCidade;

implementation

{$R *.dfm}

{procedure TFormCadastroCidade.FormShow(Sender: TObject);
begin
  if not DMPrincipal.FDConexao.Connected then
    DMPrincipal.ConectarBanco;
  DSMunicipios.DataSet := DMPrincipal.QryCadastroCidades;
  DBGrid1.DataSource := DSMunicipios;

  with DMPrincipal.QryCadastroCidades do
  begin
    Close;
    SQL.Text := 'SELECT * FROM CIDADES';
    Open;
  end;
end;}

end.
