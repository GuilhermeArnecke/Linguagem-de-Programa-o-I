unit UnDMPrincipal;

interface

uses
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
    { Private declarations }
    function BuscarCaminhoBase:string;
  public
    { Public declarations }
    procedure ConectarBanco;
  end;

var
  DMPrincipal: TDMPrincipal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDMPrincipal }

function TDMPrincipal.BuscarCaminhoBase: string;
var
  LIniFile: TIniFile;
  LCaminho: String;
begin
  LCaminho := ExtractFilePath(ParamStr(0));

  if FileExists(LCaminho + 'config.ini') then
  begin
    LIniFile := TIniFile.Create(LCaminho + 'config.ini');
    try
      Result := LIniFile.ReadString('configuracao', 'caminhobanco', '');
    finally
      FreeAndNil(LIniFile);
    end;
  end
  else
  begin
    ShowMessage(' Arquivo ' + LCaminho + 'config.ini não encontrado!' + #13 +
      'Verifique!');
    Abort;
  end;
end;

procedure TDMPrincipal.ConectarBanco;
begin
  try
    FDConexao.Close;
    FDConexao.Params.Add('DriverID=FB');
    FDConexao.Params.Add('Database=' + BuscarCaminhoBase);
    FDConexao.Params.Add('User_Name=sysdba');
    FDConexao.Params.Add('Password=masterkey');

    FDConexao.Connected := True;
  except
    on E: Exception do
      ShowMessage('Não foi possível conectar ao banco: '
      + #13 + E.Message);
  end;
end;

end.
