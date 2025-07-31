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
  FireDAC.DApt, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.DataSet, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    FDConexao: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDQueryConsulta: TFDQuery;
    TabelaEstados: TDBGrid;
    DSEstados: TDataSource;
    ConectarButton: TButton;
    BuscarDadosButton: TButton;
    procedure ConectarButtonClick(Sender: TObject);
    procedure BuscarDadosButtonClick(Sender: TObject);
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
  FDQueryConsulta.Close;

  FDQueryConsulta.SQL.Clear;
  FDQueryConsulta.SQL.Add('SELECT * FROM ESTADOS');
  FDQueryConsulta.Open;
end;

procedure TForm1.ConectarButtonClick(Sender: TObject);
begin
  FDConexao.Close;
  FDConexao.Params.Add('DriverID=FB');
  FDConexao.Params.Add('Database=C:\Users\guilh\Documents\GitHub\Delphi\Linguagem de Programação II\Primeira Atividade\BANCO.FDB');
  FDConexao.Params.Add('User_Name=SYSDBA');
  FDConexao.Params.Add('Password=masterkey');

  FDConexao.Connected := True;
  if FDConexao.Connected then
  begin
    ShowMessage('Deu boa... =)');
  end
  else
  begin
    ShowMessage('Não deu boa... =(');
  end;
end;

end.
