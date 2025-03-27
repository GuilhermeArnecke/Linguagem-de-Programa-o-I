unit VisualProjectGroup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormPrincipal = class(TForm)
    Button1: TButton;
    TextBox: TEdit;
    procedure TFormPrincipal.Button1Click(Sender: TObject);
  private
    { Private declarations }
    function ConverterTextoParaMaiusculo(ATexto: string): string;
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

function TFormPrincipal.ConverterTextoParaMaiusculo(ATexto: string): string;
begin
   Result := ATexto.ToUpper;
end;

end.

procedure TFormPrincipal.Button1Click(Sender: TObject);
var
  TextoMaiusculo: string;
begin
  TextoMaiusculo := ConverterTextoParaMaiusculo(TextBox.Texto);
  ShowMessage(TextoMaiusculo);
end;


