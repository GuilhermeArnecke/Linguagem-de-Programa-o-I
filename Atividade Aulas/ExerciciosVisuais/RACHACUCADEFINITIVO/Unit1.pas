unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TMenino = record
    Sacola: string;
    Nome: string;
    Fantasia: string;
    Doce: string;
    Idade: string;
    Mae: string;

  end;
  TForm1 = class(TForm)
    Background: TPanel;
    Painel1: TPanel;
    Menino1: TGroupBox;
    SacolaBox: TComboBox;
    PainelDefinicoes: TPanel;
    NomeBox: TComboBox;
    FantasiaBox: TComboBox;
    DoceBox: TComboBox;
    IdadeBox: TComboBox;
    MaeBox: TComboBox;
    Menuno2: TGroupBox;
    SacolaBox2: TComboBox;
    NomeBox2: TComboBox;
    FantasiaBox2: TComboBox;
    DoceBox2: TComboBox;
    IdadeBox2: TComboBox;
    MaeBox2: TComboBox;
    Menuno3: TGroupBox;
    SacolaBox3: TComboBox;
    NomeBox3: TComboBox;
    FantasiaBox3: TComboBox;
    DoceBox3: TComboBox;
    IdadeBox3: TComboBox;
    MaeBox3: TComboBox;
    Menino4: TGroupBox;
    SacolaBox4: TComboBox;
    NomeBox4: TComboBox;
    FantasiaBox4: TComboBox;
    DoceBox4: TComboBox;
    IdadeBox4: TComboBox;
    MaeBox4: TComboBox;
    Menuno5: TGroupBox;
    SacolaBox5: TComboBox;
    NomeBox5: TComboBox;
    FantasiaBox5: TComboBox;
    DoceBox5: TComboBox;
    IdadeBox5: TComboBox;
    MaeBox5: TComboBox;
    TextFantasia: TStaticText;
    TextDoce: TStaticText;
    TextIdade: TStaticText;
    TextMae: TStaticText;
    TextName: TStaticText;
    StaticText5: TStaticText;
    LineInCenter: TPanel;
    Dica19: TLabel;
    Dica1: TLabel;
    Dica2: TLabel;
    Dica16: TLabel;
    Dica3: TLabel;
    Dica4: TLabel;
    Dica5: TLabel;
    Dica6: TLabel;
    DIca7: TLabel;
    Dica8: TLabel;
    Dica11: TLabel;
    Dica12: TLabel;
    Dica13: TLabel;
    Dica14: TLabel;
    Dica9: TLabel;
    Dica10: TLabel;
    Dica15: TLabel;
    Dica17: TLabel;
    Dica18: TLabel;
    procedure Carregamento(Param: TObject);
  private
    procedure RecebeValoresComboBox;
    procedure ChamaGeralProFait(AQUI: Integer);
    function IfDica1: Boolean;
    function IfDica2: Boolean;
    function IfDica3: Boolean;
    function IfDica4: Boolean;
    function IfDica5: Boolean;
    function IfDica6: Boolean;
    function IfDica7: Boolean;
    function IfDica8: Boolean;
    function IfDica9: Boolean;
    function IfDica10: Boolean;
    function IfDica11: Boolean;
    function IfDica12: Boolean;
    function IfDica13: Boolean;
    function IfDica14: Boolean;
    function IfDica15: Boolean;
    function IfDica16: Boolean;
    function IfDica17: Boolean;
    function IfDica18: Boolean;
    function IfDica19: Boolean;
  public

  end;

var
  Form1: TForm1;
  Menino: array [1..5] of TMenino;
  Correto: Integer;
   AQUI: integer;

implementation

{$R *.dfm}

procedure TForm1.Carregamento(Param: TObject);
begin
   RecebeValoresComboBox;
   ChamaGeralProFait(AQUI);
end;

procedure TForm1.ChamaGeralProFait(AQUI: integer);
begin
  IfDica1;
  IfDica2;
  IfDica3;
  IfDica4;
  IfDica5;
  IfDica6;
  IfDica7;
  IfDica8;
  IfDica9;
  IfDica10;
  IfDica11;
  IfDica12;
  IfDica13;
  IfDica14;
  IfDica15;
  IfDica16;
  IfDica17;
  IfDica18;
  IfDica19;
end;

function TForm1.IfDica1: Boolean;
begin
  AQUI := 2;
  if (Menino[4].Sacola <> '') and (Menino[4].Doce <> '')  then
    begin
      if (Menino[4].Sacola <> 'Vermelha') and (Menino[4].Doce <> 'Sorvete')
      or (Menino[4].Sacola = 'Vermelha') and (Menino[4].Doce <> 'Sorvete')
      or (Menino[4].Sacola <> 'Vermelha') and (Menino[4].Doce = 'Sorvete') then
        begin
          Result := False;
          AQUI := 0
        end
      else
        begin
          Result := True;
          AQUI := 1;
        end;
    end;

  if (AQUI = 1) then
    begin
       Dica1.Font.Color := clGreen;
       Dica1.Font.Style := Dica1.Font.Style + [fsStrikeOut];
    end
  else if (AQUI = 0) then
    begin
       Dica1.Font.Color := clRed;
       Dica1.Font.Style := Dica1.Font.Style - [fsStrikeOut];
    end
  else
    begin
        Dica1.Font.Color := clBlack;
        Dica1.Font.Style := Dica1.Font.Style - [fsStrikeOut];
    end;
end;

function TForm1.IfDica10: Boolean;
begin
  AQUI := 2;
  if (Menino[2].Nome <> '') and (Menino[3].Sacola <> '') then
    begin
      if (Menino[2].Nome <> 'Kiko') and (Menino[3].Sacola <> 'Azul')
      or (Menino[2].Nome = 'Kiko') and (Menino[3].Sacola <> 'Azul')
      or (Menino[2].Nome <> 'Kiko') and (Menino[3].Sacola = 'Azul') then
        begin
          Result := False;
          AQUI := 0;
        end
      else
        begin
          Result := True;
          AQUI := 1;
        end;
    end;

  if (AQUI = 1) then
    begin
       Dica10.Font.Color := clGreen;
       Dica10.Font.Style := Dica10.Font.Style + [fsStrikeOut];
    end
  else if (AQUI = 0) then
    begin
       Dica10.Font.Color := clRed;
       Dica10.Font.Style := Dica10.Font.Style - [fsStrikeOut];
    end
  else
    begin
        Dica10.Font.Color := clBlack;
        Dica10.Font.Style := Dica10.Font.Style - [fsStrikeOut];
    end;
end;

function TForm1.IfDica11: Boolean;
begin
  AQUI := 2;
  if Menino[4].Idade <> '' then
    begin
      if Menino[4].Idade <> '9' then
        begin
          Result := False;
          AQUI := 0;
        end
      else
        begin
          Result := True;
          AQUI := 1;
        end;
    end;

  if (AQUI = 1) then
    begin
       Dica11.Font.Color := clGreen;
       Dica11.Font.Style := Dica11.Font.Style + [fsStrikeOut];
    end
  else if (AQUI = 0) then
    begin
       Dica11.Font.Color := clRed;
       Dica11.Font.Style := Dica11.Font.Style - [fsStrikeOut];
    end
  else
    begin
        Dica11.Font.Color := clBlack;
        Dica11.Font.Style := Dica11.Font.Style - [fsStrikeOut];
    end;
end;

function TForm1.IfDica12: Boolean;
begin
  AQUI := 2;
  if (Menino[1].Fantasia <> '') and (Menino[2].Sacola <> '') and (Menino[4].Sacola <> '') then
    begin
      if (Menino[1].Fantasia <> 'Pirata') and (Menino[2].Sacola <> 'Amarela') and (Menino[4].Sacola <> 'Vermelha')
      or (Menino[1].Fantasia = 'Pirata') and (Menino[2].Sacola <> 'Amarela') and (Menino[4].Sacola <> 'Vermelha')
      or (Menino[1].Fantasia <> 'Pirata') and (Menino[2].Sacola = 'Amarela') and (Menino[4].Sacola <> 'Vermelha')
      or (Menino[1].Fantasia <> 'Pirata') and (Menino[2].Sacola <> 'Amarela') and (Menino[4].Sacola = 'Vermelha') then
        begin
          Result := False;
          AQUI := 0;
        end
      else
        begin
          Result := True;
          AQUI := 1;
        end;
    end;

  if (AQUI = 1) then
    begin
       Dica12.Font.Color := clGreen;
       Dica12.Font.Style := Dica12.Font.Style + [fsStrikeOut];
    end
  else if (AQUI = 0) then
    begin
       Dica12.Font.Color := clRed;
       Dica12.Font.Style := Dica12.Font.Style - [fsStrikeOut];
    end
  else
    begin
        Dica12.Font.Color := clBlack;
        Dica12.Font.Style := Dica12.Font.Style - [fsStrikeOut];
    end;
end;

function TForm1.IfDica13: Boolean;
begin
  AQUI := 2;
  if (Menino[1].Sacola <> '') and (Menino[2].Idade <> '') then
    begin
      if (Menino[1].Sacola <> 'Branca') and (Menino[2].Idade <> '8')
      or (Menino[1].Sacola = 'Branca') and (Menino[2].Idade <> '8')
      or (Menino[1].Sacola <> 'Branca') and (Menino[2].Idade = '8') then
        begin
          Result := False;
          AQUI := 0;
        end
      else
        begin
          Result := True;
          AQUI := 1;
        end;
    end;

  if (AQUI = 1) then
    begin
       Dica13.Font.Color := clGreen;
       Dica13.Font.Style := Dica13.Font.Style + [fsStrikeOut];
    end
  else if (AQUI = 0) then
    begin
       Dica13.Font.Color := clRed;
       Dica13.Font.Style := Dica13.Font.Style - [fsStrikeOut];
    end
  else
    begin
        Dica13.Font.Color := clBlack;
        Dica13.Font.Style := Dica13.Font.Style - [fsStrikeOut];

    end;
end;

function TForm1.IfDica14: Boolean;
begin
  AQUI := 2;
  if (Menino[3].Sacola <> '') and (Menino[5].Nome <> '') then
    begin
      if (Menino[3].Sacola <> 'Azul') and (Menino[5].Nome <> 'Renan')
      or (Menino[3].Sacola = 'Azul') and (Menino[5].Nome <> 'Renan')
      or (Menino[3].Sacola <> 'Azul') and (Menino[5].Nome = 'Renan') then
        begin
           Result := False;
           AQUI := 0;
        end
      else
        begin
          Result := True;
          AQUI := 1;
        end;
    end;

  if (AQUI = 1) then
    begin
       Dica14.Font.Color := clGreen;
       Dica14.Font.Style := Dica14.Font.Style + [fsStrikeOut];
    end
  else if (AQUI = 0) then
    begin
       Dica14.Font.Color := clRed;
       Dica14.Font.Style := Dica14.Font.Style - [fsStrikeOut];
    end
  else
    begin
        Dica14.Font.Color := clBlack;
        Dica14.Font.Style := Dica14.Font.Style - [fsStrikeOut];
    end;
end;

function TForm1.IfDica15: Boolean;
begin
  AQUI := 2;
   if (Menino[1].Doce <> '') and (Menino[2].Mae <> '') then
    begin
      if (Menino[1].Doce <> 'Pudim') and (Menino[2].Mae <> 'Joyce')
      or (Menino[1].Doce = 'Pudim') and (Menino[2].Mae <> 'Joyce')
      or (Menino[1].Doce <> 'Pudim') and (Menino[2].Mae = 'Joyce') then
        begin
           Result := False;
           AQUI := 0;
        end
      else
        begin
          Result := True;
          AQUI := 1;
        end;
    end;

  if (AQUI = 1) then
    begin
       Dica15.Font.Color := clGreen;
       Dica15.Font.Style := Dica15.Font.Style + [fsStrikeOut];
    end
  else if (AQUI = 0) then
    begin
       Dica15.Font.Color := clRed;
       Dica15.Font.Style := Dica15.Font.Style - [fsStrikeOut];
    end
  else
    begin
        Dica15.Font.Color := clBlack;
        Dica15.Font.Style := Dica15.Font.Style - [fsStrikeOut];
    end;
end;

function TForm1.IfDica16: Boolean;
begin
  AQUI := 2;
  if (Menino[4].Fantasia <> '') and (Menino[5].Sacola <> '') then
    begin
      if (Menino[4].Fantasia <> 'Múmia') and (Menino[5].Sacola <> 'Verde')
      or (Menino[4].Fantasia = 'Múmia') and (Menino[5].Sacola <> 'Verde')
      or (Menino[4].Fantasia <> 'Múmia') and (Menino[5].Sacola = 'Verde') then
        begin
          Result := False;
          AQUI := 0;
        end
      else
        begin
          Result := True;
          AQUI := 1;
        end;
    end;

  if (AQUI = 1) then
    begin
       Dica16.Font.Color := clGreen;
       Dica16.Font.Style := Dica16.Font.Style + [fsStrikeOut];
    end
  else if (AQUI = 0) then
    begin
       Dica16.Font.Color := clRed;
       Dica16.Font.Style := Dica16.Font.Style - [fsStrikeOut];
    end
  else
    begin
        Dica16.Font.Color := clBlack;
        Dica16.Font.Style := Dica16.Font.Style - [fsStrikeOut];
    end;
end;

function TForm1.IfDica17: Boolean;
begin
  AQUI := 2;
  if (Menino[4].Nome <> '') and (Menino[5].Fantasia <> '') then
    begin
      if (Menino[4].Nome <> 'Thales') and (Menino[5].Fantasia <> 'Vampiro')
      or (Menino[4].Nome = 'Thales') and (Menino[5].Fantasia <> 'Vampiro')
      or (Menino[4].Nome <> 'Thales') and (Menino[5].Fantasia = 'Vampiro') then
        begin
          Result := False;
          AQUI := 0;
        end
      else
        begin
          Result := True;
          AQUI := 1;
        end;
    end;

  if (AQUI = 1) then
    begin
       Dica17.Font.Color := clGreen;
       Dica17.Font.Style := Dica17.Font.Style + [fsStrikeOut];
    end
  else if (AQUI = 0) then
    begin
       Dica17.Font.Color := clRed;
       Dica17.Font.Style := Dica17.Font.Style - [fsStrikeOut];
    end
  else
    begin
        Dica17.Font.Color := clBlack;
        Dica17.Font.Style := Dica17.Font.Style - [fsStrikeOut];
    end;

end;

function TForm1.IfDica18: Boolean;
begin
  AQUI := 2;
  if (Menino[1].Idade <> '') and (Menino[2].Doce <> '') then
    begin
      if (Menino[1].Idade <> '11') and (Menino[2].Doce <> 'Chiclete')
      or (Menino[1].Idade = '11') and (Menino[2].Doce <> 'Chiclete')
      or (Menino[1].Idade <> '11') and (Menino[2].Doce = 'Chiclete') then
        begin
          Result := False;
          AQUI := 0;
        end
      else
        begin
          Result := True;
          AQUI := 1;
        end;
    end;

  if (AQUI = 1) then
    begin
       Dica18.Font.Color := clGreen;
       Dica18.Font.Style := Dica18.Font.Style + [fsStrikeOut];
    end
  else if (AQUI = 0) then
    begin
       Dica18.Font.Color := clRed;
       Dica18.Font.Style := Dica18.Font.Style - [fsStrikeOut];
    end
  else
    begin
        Dica18.Font.Color := clBlack;
        Dica18.Font.Style := Dica18.Font.Style - [fsStrikeOut];
    end;
end;

function TForm1.IfDica19: Boolean;
begin
  AQUI := 2;
  if Menino[5].Mae <> '' then
    begin
      if Menino[5].Mae <> 'Sandra' then
        begin
          Result := False;
          AQUI := 0;
        end
      else
        begin
          Result := True;
          AQUI := 1;
        end;
    end;
  if (AQUI = 1) then
    begin
       Dica19.Font.Color := clGreen;
       Dica19.Font.Style := Dica19.Font.Style + [fsStrikeOut];
    end
  else if (AQUI = 0) then
    begin
       Dica19.Font.Color := clRed;
       Dica19.Font.Style := Dica19.Font.Style - [fsStrikeOut];
    end
  else
    begin
       Dica19.Font.Color := clBlack;
       Dica19.Font.Style := Dica19.Font.Style - [fsStrikeOut];
    end;
end;

function TForm1.IfDica2: Boolean;
begin
  AQUI := 2;
  if (Menino[4].Idade <> '') and (Menino[3].Idade <> '') then
    begin
      if (Menino[4].Idade <> '9') and (Menino[3].Idade <> '7')
      or (Menino[4].Idade = '9') and (Menino[3].Idade <> '7')
      or (Menino[4].Idade <> '9') and (Menino[3].Idade = '7')  then
        begin
          Result := False;
          AQUI := 0;
        end
      else
        begin
          Result := True;
          AQUI := 1;
        end;
    end;

  if (AQUI = 1) then
    begin
       Dica2.Font.Color := clGreen;
       Dica2.Font.Style := Dica2.Font.Style + [fsStrikeOut];
    end
  else if (AQUI = 0) then
    begin
       Dica2.Font.Color := clRed;
       Dica2.Font.Style := Dica2.Font.Style - [fsStrikeOut];
    end
  else
    begin
        Dica2.Font.Color := clBlack;
        Dica2.Font.Style := Dica2.Font.Style - [fsStrikeOut];
    end;
end;

function TForm1.IfDica3: Boolean;
begin
  AQUI := 2;
  if (Menino[1].Nome <> '') and (Menino[2].Idade <> '') then
    begin
      if (Menino[1].Nome <> 'Filipe') and (Menino[2].Idade <> '8')
      or (Menino[1].Nome = 'Filipe') and (Menino[2].Idade <> '8')
      or (Menino[1].Nome <> 'Filipe') and (Menino[2].Idade = '8') then
        begin
          Result := False;
          AQUI := 0;
        end
      else
        begin
          Result := True;
          AQUI := 1;
        end;
    end;

  if (AQUI = 1) then
    begin
       Dica3.Font.Color := clGreen;
       Dica3.Font.Style := Dica3.Font.Style + [fsStrikeOut];
    end
  else if (AQUI = 0) then
    begin
       Dica3.Font.Color := clRed;
       Dica3.Font.Style := Dica3.Font.Style - [fsStrikeOut];
    end
  else
    begin
        Dica3.Font.Color := clBlack;
        Dica3.Font.Style := Dica3.Font.Style - [fsStrikeOut];
    end;
end;

function TForm1.IfDica4: Boolean;
begin
  AQUI := 2;
   if (Menino[2].Nome <> '') and (Menino[3].Doce <> '') and (Menino[4].Doce <> '') then
    begin
      if (Menino[2].Nome <> 'Kiko') and (Menino[3].Doce <> 'Bolo') and (Menino[4].Doce <> 'Sorvete')
      or (Menino[2].Nome = 'Kiko') and (Menino[3].Doce <> 'Bolo') and (Menino[4].Doce <> 'Sorvete')
      or (Menino[2].Nome <> 'Kiko') and (Menino[3].Doce = 'Bolo') and (Menino[4].Doce <> 'Sorvete')
      or (Menino[2].Nome <> 'Kiko') and (Menino[3].Doce <> 'Bolo') and (Menino[4].Doce = 'Sorvete') then
        begin
          Result := False;
          AQUI := 0;
        end
      else
        begin
          Result := True;
          AQUI := 1;
        end;
    end;

  if (AQUI = 1) then
    begin
       Dica4.Font.Color := clGreen;
       Dica4.Font.Style := Dica4.Font.Style + [fsStrikeOut];
    end
  else if (AQUI = 0) then
    begin
       Dica4.Font.Color := clRed;
       Dica4.Font.Style := Dica4.Font.Style - [fsStrikeOut];
    end
  else
    begin
        Dica4.Font.Color := clBlack;
        Dica4.Font.Style := Dica4.Font.Style - [fsStrikeOut];
    end;
end;

function TForm1.IfDica5: Boolean;
begin
  AQUI := 2;
  if (Menino[5].Sacola <> '') and (Menino[5].Doce <> '')  then
    begin
      if (Menino[5].Sacola <> 'Verde') and (Menino[5].Doce <> 'Picolé')
      or (Menino[5].Sacola = 'Verde') and (Menino[5].Doce <> 'Picolé')
      or (Menino[5].Sacola <> 'Verde') and (Menino[5].Doce = 'Picolé') then
        begin
          Result := False;
          AQUI := 0;
        end
      else
        begin
          Result := True;
          AQUI := 1;
        end;
    end;

  if (AQUI = 1) then
    begin
       Dica5.Font.Color := clGreen;
       Dica5.Font.Style := Dica5.Font.Style + [fsStrikeOut];
    end
  else if (AQUI = 0) then
    begin
       Dica5.Font.Color := clRed;
       Dica5.Font.Style := Dica5.Font.Style - [fsStrikeOut];
    end
  else
    begin
        Dica5.Font.Color := clBlack;
        Dica5.Font.Style := Dica5.Font.Style - [fsStrikeOut];
    end;
end;

function TForm1.IfDica6: Boolean;
begin
  AQUI := 2;
   if (Menino[3].Mae <> '') and (Menino[4].Mae <> '')  then
    begin
      if (Menino[3].Mae <> 'Claudia') and (Menino[4].Mae <> 'Ângela')
      or (Menino[3].Mae = 'Claudia') and (Menino[4].Mae <> 'Ângela')
      or (Menino[3].Mae <> 'Claudia') and (Menino[4].Mae = 'Ângela') then
        begin
          Result := False;
          AQUI := 0;
        end
      else
        begin
          Result := True;
          AQUI := 1;
        end;
    end;

  if (AQUI = 1) then
    begin
       Dica6.Font.Color := clGreen;
       Dica6.Font.Style := Dica6.Font.Style + [fsStrikeOut];
    end
  else if (AQUI = 0) then
    begin
       Dica6.Font.Color := clRed;
       Dica6.Font.Style := Dica6.Font.Style - [fsStrikeOut];
    end
  else
    begin
        Dica6.Font.Color := clBlack;
        Dica6.Font.Style := Dica6.Font.Style - [fsStrikeOut];
    end;
end;

function TForm1.IfDica7: Boolean;
begin
  AQUI := 2;
  if Menino[3].Fantasia <> '' then
    begin
      if Menino[3].Fantasia <> 'Bruxo' then
        begin
          Result := False;
          AQUI := 0;
        end
      else
        begin
          Result := True;
          AQUI := 1;
        end;
    end;

  if (AQUI = 1) then
    begin
       Dica7.Font.Color := clGreen;
       Dica7.Font.Style := Dica7.Font.Style + [fsStrikeOut];
    end
  else if (AQUI = 0) then
    begin
       Dica7.Font.Color := clRed;
       Dica7.Font.Style := Dica7.Font.Style - [fsStrikeOut];
    end
  else
    begin
        Dica7.Font.Color := clBlack;
        Dica7.Font.Style := Dica7.Font.Style - [fsStrikeOut];
    end;
end;

function TForm1.IfDica8: Boolean;
begin
  AQUI := 2;
  if (Menino[2].Mae <> '') and (Menino[4].Mae <> '') and (Menino[5].Mae <> '') then
    begin
      if (Menino[2].Mae <> 'Joyce') and (Menino[4].Mae <> 'Ângela') and (Menino[5].Mae <> 'Sandra')
      or (Menino[2].Mae = 'Joyce') and (Menino[4].Mae <> 'Ângela') and (Menino[5].Mae <> 'Sandra')
      or (Menino[2].Mae <> 'Joyce') and (Menino[4].Mae = 'Ângela') and (Menino[5].Mae <> 'Sandra')
      or (Menino[2].Mae <> 'Joyce') and (Menino[4].Mae <> 'Ângela') and (Menino[5].Mae = 'Sandra') then
        begin
          Result := False;
          AQUI := 0;
        end
      else
        begin
          Result := True;
          AQUI := 1;
        end;
    end;

  if (AQUI = 1) then
    begin
       Dica8.Font.Color := clGreen;
       Dica8.Font.Style := Dica8.Font.Style + [fsStrikeOut];
    end
  else if (AQUI = 0) then
    begin
       Dica8.Font.Color := clRed;
       Dica8.Font.Style := Dica8.Font.Style - [fsStrikeOut];
    end
  else
    begin
        Dica8.Font.Color := clBlack;
        Dica8.Font.Style := Dica8.Font.Style - [fsStrikeOut];
    end;
end;

function TForm1.IfDica9: Boolean;
begin
  AQUI := 2;
  if (Menino[4].Doce <> '') and (Menino[5].Doce <> '') then
    begin
      if (Menino[4].Doce <> 'Sorvete') and (Menino[5].Doce <> 'Picolé')
      or (Menino[4].Doce = 'Sorvete') and (Menino[5].Doce <> 'Picolé')
      or (Menino[4].Doce <> 'Sorvete') and (Menino[5].Doce = 'Picolé') then
        begin
          Result := False;
          AQUI := 0;
        end
      else
        begin
          Result := True;
          AQUI := 1;
        end;
    end;

  if (AQUI = 1) then
    begin
       Dica9.Font.Color := clGreen;
       Dica9.Font.Style := Dica9.Font.Style + [fsStrikeOut];
    end
  else if (AQUI = 0) then
    begin
       Dica9.Font.Color := clRed;
       Dica9.Font.Style := Dica9.Font.Style - [fsStrikeOut];
    end
  else
    begin
        Dica9.Font.Color := clBlack;
        Dica9.Font.Style := Dica9.Font.Style - [fsStrikeOut];
    end;
end;

procedure TForm1.RecebeValoresComboBox;
begin
  Menino[1].Sacola := SacolaBox.Text;
  Menino[1].Nome := NomeBox.Text;
  Menino[1].Fantasia := FantasiaBox.Text;
  Menino[1].Doce := DoceBox.Text;
  Menino[1].Idade := IdadeBox.Text;
  Menino[1].Mae := MaeBox.Text;

//_____________________________________

  Menino[2].Sacola := SacolaBox2.Text;
  Menino[2].Nome := NomeBox2.Text;
  Menino[2].Fantasia := FantasiaBox2.Text;
  Menino[2].Doce := DoceBox2.Text;
  Menino[2].Idade := IdadeBox2.Text;
  Menino[2].Mae := MaeBox2.Text;

//_____________________________________

  Menino[3].Sacola := SacolaBox3.Text;
  Menino[3].Nome := NomeBox3.Text;
  Menino[3].Fantasia := FantasiaBox3.Text;
  Menino[3].Doce := DoceBox3.Text;
  Menino[3].Idade := IdadeBox3.Text;
  Menino[3].Mae := MaeBox3.Text;

//_____________________________________

  Menino[4].Sacola := SacolaBox4.Text;
  Menino[4].Nome := NomeBox4.Text;
  Menino[4].Fantasia := FantasiaBox4.Text;
  Menino[4].Doce := DoceBox4.Text;
  Menino[4].Idade := IdadeBox4.Text;
  Menino[4].Mae := MaeBox4.Text;

//_____________________________________

  Menino[5].Sacola := SacolaBox5.Text;
  Menino[5].Nome := NomeBox5.Text;
  Menino[5].Fantasia := FantasiaBox5.Text;
  Menino[5].Doce := DoceBox5.Text;
  Menino[5].Idade := IdadeBox5.Text;
  Menino[5].Mae := MaeBox5.Text;
end;

end.
