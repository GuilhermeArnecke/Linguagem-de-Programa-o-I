unit UnRelatorioCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Data.DB;

type
  TFormRelatoriosCidadesPadrao = class(TForm)
    ReportCidade: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLBand3: TRLBand;
    DsDados: TDataSource;
    RLLabel1: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatoriosCidadesPadrao: TFormRelatoriosCidadesPadrao;

implementation

{$R *.dfm}

end.
