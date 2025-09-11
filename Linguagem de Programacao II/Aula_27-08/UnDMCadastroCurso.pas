unit UnDMCadastroCurso;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, UnDMPrincipal;

type
  TDMCadastroCurso = class(TDataModule)
    QryCadastroCurso: TFDQuery;
    QryCadastroCursoID_CURSO: TIntegerField;
    QryCadastroCursoCODIGO: TIntegerField;
    QryCadastroCursoNOME: TStringField;
    QryCadastroCursoVALOR: TFMTBCDField;
    procedure QryCadastroCursoNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    function BuscarProximoID(): Largeint;
  public
    { Public declarations }
  end;

var
  DMCadastroCurso: TDMCadastroCurso;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDMCadastroCurso }

function TDMCadastroCurso.BuscarProximoID: Largeint;
var
  LQry: TFDQuery;
begin
  LQry := TFDQuery.Create(nil);
  try
    LQry.Connection := DMPrincipal.FDConexao;
    LQry.close;
    LQry.SQL.Clear;
    LQry.SQL.Add('SELECT gen_id(gn_curso, 1) AS PROXIMO FROM RDB$DATABASE');
    LQry.Open;

    Result := LQry.FieldByName('PROXIMO').AsLargeInt;
  finally
    FreeAndNil(LQry);
  end;

end;

procedure TDMCadastroCurso.QryCadastroCursoNewRecord(DataSet: TDataSet);
begin
  QryCadastroCurso.FieldByName('ID_CURSO').AsLargeInt := BuscarProximoID;
end;

end.
