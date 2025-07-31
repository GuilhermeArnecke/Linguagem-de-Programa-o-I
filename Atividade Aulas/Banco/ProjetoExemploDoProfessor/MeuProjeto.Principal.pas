unit MeuProjeto.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MeuProjeto.DataBase, Vcl.Menus;

type
  TMeuProjetoPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastrodomeupenis1: TMenuItem;
    procedure Cadastrodomeupenis1Click(Sender: TObject);
  private
    { Private declarations }
  end;

var
  MeuProjetoPrincipal: TMeuProjetoPrincipal;

implementation

uses
  OutraParada;

{$R *.dfm}


procedure TMeuProjetoPrincipal.Cadastrodomeupenis1Click(Sender: TObject);
begin
  Form1.ShowModal;
end;

end.
