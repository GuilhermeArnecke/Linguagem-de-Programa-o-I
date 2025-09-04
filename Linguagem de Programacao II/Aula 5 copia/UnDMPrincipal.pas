unit UnDMPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, Vcl.Graphics,
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Phys.IBBase, Vcl.Dialogs, System.IniFiles;

type
  TDMPrincipal = class(TDataModule)
    FDConexao: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDQueryConsulta: TFDQuery;
    QryCadastroCidades: TFDQuery;
  private
    function BuscarCaminhoBase(): string;
  public
    procedure ConectarBanco;
    procedure BuscarDados;
  end;

var
  DMPrincipal: TDMPrincipal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

function TDMPrincipal.BuscarCaminhoBase: string;
var
  LIniFile: TIniFile;
  LCaminho: string;
begin
  LCaminho := ExtractFilePath(ParamStr(0));
  if not FileExists(LCaminho + 'config.ini') then
  begin
    ShowMessage('Arquivo ' + LCaminho + 'config.ini não encontrado!' +
      sLineBreak + 'Verifique.');
    Abort;
  end;

  LIniFile := TIniFile.Create(LCaminho + 'config.ini');
  try
    Result := LIniFile.ReadString('configuracao', 'caminhobanco', '');
    if Result = '' then
    begin
      ShowMessage('Caminho do banco não configurado no config.ini.');
      Abort;
    end;
  finally
    LIniFile.Free;
  end;
end;

procedure TDMPrincipal.ConectarBanco;
begin
  try
    if FDConexao.Connected then
      FDConexao.Close;

    FDConexao.Params.Clear;
    FDConexao.Params.Add('DriverID=FB');
    FDConexao.Params.Add('Database=' + BuscarCaminhoBase);
    FDConexao.Params.Add('User_Name=sysdba');
    FDConexao.Params.Add('Password=masterkey');
    FDConexao.Connected := True;

    ShowMessage('Conexão realizada com sucesso!');
  except
    on E: Exception do
      ShowMessage('Não foi possível conectar ao banco: ' + sLineBreak +
        E.Message);
  end;
end;

procedure TDMPrincipal.BuscarDados;
begin
  FDQueryConsulta.Close;
  FDQueryConsulta.SQL.Clear;
  FDQueryConsulta.SQL.Add('SELECT * FROM Estados');
  FDQueryConsulta.Open;
end;

end.
