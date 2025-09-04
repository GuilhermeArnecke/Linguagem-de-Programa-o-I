unit UnDMCadastroCidades1;

interface

uses
  System.SysUtils, System.Classes, UnDMPrincipal, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TUnDMCadastroCidades = class(TDataModule)
    QryCadastroCidades: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UnDMCadastroCidades: TUnDMCadastroCidades;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TFormCadastroCidade.FormShow(Sender: TObject);
begin
  UnDMCadastroCidades := TUnDMCadastroCidades.Create(self);
end;

end.
