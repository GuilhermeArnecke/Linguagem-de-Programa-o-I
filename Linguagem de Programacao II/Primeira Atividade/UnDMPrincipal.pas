unit UnDMPrincipal;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Phys.FBDef,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, System.IniFiles, Vcl.Dialogs;

type
  TDMPrincipal = class(TDataModule)
    FDQueryConsulta: TFDQuery;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDConexao: TFDConnection;
  private
    { Private declarations }
  public
    procedure ConectarBanco;
    procedure BuscarDados;
    procedure ConcluirConexao;
    function BuscarCaminhoBase: string;
    { Public declarations }
  end;

var
  DMPrincipal: TDMPrincipal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}
{ TDataModule1 }

function TDMPrincipal.BuscarCaminhoBase: string;
var
  LIniFile: TIniFile;
  LPath: string;
begin
  LPath := ExtractFilePath(ParamStr(0));
  if not FileExists(LPath + 'config.ini') then
  begin
    ShowMessage('Arquivo ' + LPath + 'config.ini não encontrado');
    Abort;
  end;

  LIniFile := TIniFile.Create(LPath + 'Config.ini');
  try

    Result := LIniFile.ReadString('configuracao', 'caminhobanco', '');

  finally
    FreeAndNil(LIniFile);

  end;

end;

procedure TDMPrincipal.ConcluirConexao;
begin
  FDConexao.Close;
  FDConexao.Params.Add('DriverID=FB');
  FDConexao.Params.Add('Database=' + BuscarCaminhoBase);
  FDConexao.Params.Add('User_Name=SYSDBA');
  FDConexao.Params.Add('Password=masterkey');
  FreeAndNil(Self);

end;

procedure TDMPrincipal.ConectarBanco;
begin

  try

    FDConexao.Close;
    FDConexao.Params.Add('DriverId=FB');
    FDConexao.Params.Add('Database=' + BuscarCaminhoBase);
    FDConexao.Params.Add('User_name=sysdba');
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

  except
    on E: Exception do
      ShowMessage('Não foi possivel ' + E.Message);

  end;
end;

procedure TDMPrincipal.BuscarDados;
begin
  FDQueryConsulta.Close;
  FDQueryConsulta.SQL.Clear;
  FDQueryConsulta.SQL.Add('SELECT * FROM ESTADOS');
  FDQueryConsulta.Open;
end;

end.
