unit UnPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Comp.DataSet, FireDAC.Phys.IBBase, Vcl.StdCtrls,
  System.IniFiles, Vcl.Menus, UnFormCadastroCidades, UnFormCadastroCurso;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    DSEstados: TDataSource;
    Button2: TButton;
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Cidades1: TMenuItem;
    C1: TMenuItem;
    procedure Button2Click(Sender: TObject);
    procedure Cidades1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure C1Click(Sender: TObject);
  private
    { Private declarations }
    function BuscarCaminhoBase(): string;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  UnDMPrincipal;

{$R *.dfm}

function TForm1.BuscarCaminhoBase: string;
var
  LIniFile: TIniFile;
  LCaminho: String;
begin
  //
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  DMPrincipal.FDQueryConsulta.Close;

  DMPrincipal.FDQueryConsulta.SQL.Clear;
  DMPrincipal.FDQueryConsulta.SQL.Add('SELECT * FROM ESTADOS');
  DMPrincipal.FDQueryConsulta.Open;

end;

procedure TForm1.C1Click(Sender: TObject);
var
  LFormCadastro: TFormCadastroCurso;
begin
  LFormCadastro := TFormCadastroCurso.Create(nil);
  try
    LFormCadastro.ShowModal;
  finally
    FreeAndNil(LFormCadastro)
  end;

end;

procedure TForm1.Cidades1Click(Sender: TObject);
var
  LFormCadastro: TFormCadastroCidade;
begin
  LFormCadastro := TFormCadastroCidade.Create(nil);
  try
    LFormCadastro.ShowModal;
  finally
    FreeAndNil(LFormCadastro)
  end;

end;

procedure TForm1.FormShow(Sender: TObject);
begin
  DMPrincipal.ConectarBanco;
end;

end.
