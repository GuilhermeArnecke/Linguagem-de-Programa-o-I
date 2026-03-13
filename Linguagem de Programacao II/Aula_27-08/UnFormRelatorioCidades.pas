unit UnFormRelatorioCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Data.DB;

type
  TFormRelatorioCidades = class(TForm)
    RLReport: TRLReport;
    DsDados: TDataSource;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLBand3: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioCidades: TFormRelatorioCidades;

implementation

{$R *.dfm}

end.
