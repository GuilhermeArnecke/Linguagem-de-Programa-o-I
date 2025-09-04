unit UnFormCadastroCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, UnDMCadastroCidades;

type
  TFormCadastroCidade = class(TForm)
    BtnNovo: TButton;
    BtnCancelar: TButton;
    BtnSalvar: TButton;
    BtnExcluir: TButton;
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroCidade: TFormCadastroCidade;

implementation

{$R *.dfm}

end.
