unit UnDMCadastroCidades;

interface

uses
  System.SysUtils, System.Classes, UnDMPrincipal, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDMCadastroCidades = class(TDataModule)
    QryCadastroCidades: TFDQuery;
    QryEstados: TFDQuery;
    QryCadastroCidadesDescricaoEstado: TStringField;
    QryCadastroCidadesID_CIDADE: TIntegerField;
    QryCadastroCidadesDESCRICAO: TStringField;
    QryCadastroCidadesID_ESTADO: TIntegerField;
    procedure QryCadastroCidadesNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    function BuscarProximoID(): Largeint;
  public
    { Public declarations }
  end;

var
  DMCadastroCidades: TDMCadastroCidades;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}
{ TDMCadastroCidades }

function TDMCadastroCidades.BuscarProximoID: Largeint;
var
  LQry: TFDQuery;
begin
  LQry := TFDQuery.Create(nil);
  try
    LQry.Connection := DMPrincipal.FDConexao;
    LQry.close;
    LQry.SQL.Clear;
    LQry.SQL.Add('SELECT gen_id(gn_cidades, 1) AS PROXIMO FROM RDB$DATABASE');
    LQry.Open;

    Result := LQry.FieldByName('PROXIMO').AsLargeInt;
  finally
    FreeAndNil(LQry);
  end;

end;

procedure TDMCadastroCidades.QryCadastroCidadesNewRecord(DataSet: TDataSet);
begin
  QryCadastroCidades.FieldByName('ID_CIDADE').AsLargeInt := BuscarProximoID;
end;

end.
