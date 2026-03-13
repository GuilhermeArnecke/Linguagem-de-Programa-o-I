unit UnFormFiltroRelatorioCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, UnFormRelatorioCidades,
  UnDMPrincipal;

type
  TFormFiltroRelatorioCidades = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    EdtEstado: TEdit;
    EdtCidade: TEdit;
    BtnRelatorio: TButton;
    QryConsulta: TFDQuery;
    procedure BtnRelatorioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFiltroRelatorioCidades: TFormFiltroRelatorioCidades;

implementation

{$R *.dfm}

procedure TFormFiltroRelatorioCidades.BtnRelatorioClick(Sender: TObject);
const
  CSql = 'select cidades.id_cidade, ' + #13 +
    '       cidades.descricao as nome_cidade, ' + #13 +
    '       Estados.nome as nome_estado ' + #13 + 'from cidades ' + #13 +
    'join estados ' + #13 + '    on (Cidades.id_estado = Estados.id_estado) ' +
    #13 + ' where cidades.id_cidade > 0';

var
  LSql: string;
  LRelatorio: TFormRelatorioCidades;

begin
  LSql := CSql;

  if Trim(EdtEstado.Text) <> EmptyStr then
  begin
    LSql := LSql + #13 + '  AND UPPER(ESTADOS.UF) = ' +
      UpperCase(QuotedStr(Trim(EdtEstado.Text)));
  end;

  if Trim(EdtCidade.Text) <> EmptyStr then
  begin
    LSql := LSql + #13 + '  AND CIDADES.DESCRICAO LIKE ' +
      QuotedStr('%' + Trim(EdtCidade.Text) + '%');
  end;

  QryConsulta.Close;
  QryConsulta.SQL.Clear;
  QryConsulta.SQL.Add(LSql);
  QryConsulta.Open;

  LRelatorio := TFormRelatorioCidades.Create(nil);
  try
    LRelatorio.DsDados.DataSet := QryConsulta;
    LRelatorio.RLReport.Preview();
  finally
    FreeAndNil(LRelatorio);
  end;
end;

end.
