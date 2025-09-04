unit UnPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, UnDMPrincipal, Vcl.Menus,
  UnFormCadastroCidades;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    DSEstados: TDataSource;
    BuscarDados: TButton;
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Cidades1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure BtnBuscarTabelasClick(Sender: TObject);
    procedure Cidades1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  DSEstados.DataSet := DMPrincipal.FDQueryConsulta;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  DMPrincipal.ConectarBanco;
end;

procedure TForm1.BtnBuscarTabelasClick(Sender: TObject);
begin
  DMPrincipal.BuscarDados;
end;

procedure TForm1.Cidades1Click(Sender: TObject);
var
  LFormCadastro: TFormCadastroCidade;
begin
  LFormCadastro := TFormCadastroCidade.Create(nil);
  try
    LFormCadastro.ShowModal;
  finally
    FreeAndNil(LFormCadastro);
  end;
end;

end.
