unit MeuProjeto.DataBase;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Phys.PGDef, FireDAC.Phys.PG, FireDAC.Comp.UI, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteWrapper.Stat;

type
  TFDQuery1 = class(TDataModule)
    Connection: TFDConnection;
    FDGUIxWaitCursor: TFDGUIxWaitCursor;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    FDQuery1: TFDQuery;
    FDQuery1id_lista: TFDAutoIncField;
    FDQuery1id_exercicio: TIntegerField;
    FDQuery1id_cardapio: TIntegerField;
    FDQuery1nome_exercicio: TWideMemoField;
    FDQuery1calorias_queimadas: TFloatField;
    FDQuery1frequencia_exercicios: TIntegerField;
    FDQuery1repeticao_exercicio: TIntegerField;
    FDQuery1serie_exercicio: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDQuery1: TFDQuery1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TFDQuery1.DataModuleCreate(Sender: TObject);
begin
   Connection.Connected := True;
end;

procedure TFDQuery1.DataModuleDestroy(Sender: TObject);
begin
   Connection.Connected := False;
end;

end.
