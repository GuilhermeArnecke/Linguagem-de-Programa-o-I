unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.DataSet, Vcl.StdCtrls,
  System.IniFiles, UnDMPrincipal, Vcl.Menus, UnFormCadastroCidades;

type
  TForm1 = class(TForm)
    TabelaEstados: TDBGrid;
    DSEstados: TDataSource;
    ConectarButton: TButton;
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Cidades1: TMenuItem;
    BuscarDadosButton: TButton;
    procedure ConectarButtonClick(Sender: TObject);
    procedure BuscarDadosButtonClick(Sender: TObject);
    procedure Cidades1Click(Sender: TObject);
    procedure TesteButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;


implementation

{$R *.dfm}

procedure TForm1.BuscarDadosButtonClick(Sender: TObject);
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

procedure TForm1.ConectarButtonClick(Sender: TObject);
begin
  DMPrincipal.ConectarBanco;
end;

end.
