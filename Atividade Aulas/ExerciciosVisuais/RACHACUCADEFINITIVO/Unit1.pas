unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
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
  Menino: array [1 .. 5] of TMenino;
  Correto: Integer;
  AQUI: Integer;

implementation

{$R *.dfm}

procedure TForm1.Carregamento(Param: TObject);
begin
  RecebeValoresComboBox;
  ChamaGeralProFait(AQUI);
end;

procedure TForm1.ChamaGeralProFait(AQUI: Integer);
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
var
  j: Integer;
begin
  AQUI := 2;
  for j := 1 to 5 do
  begin
    if (Menino[j].Sacola <> '') and (Menino[j].Doce <> '') then
    begin
      if (Menino[j].Sacola = 'Vermelha') and (Menino[j].Doce = '') then
      begin
        break;
      end
      else if (Menino[j].Sacola = '') and (Menino[j].Doce = 'Sorvete') then
      begin
        break;
      end;

      if (Menino[j].Sacola = 'Vermelha') and (Menino[j].Doce = 'Sorvete') then
      begin
        Result := True;
        AQUI := 1;
        break;
      end
      else
      begin
        Result := False;
        AQUI := 0;
      end;

      if (Menino[j].Sacola <> 'Vermelha') and (Menino[j].Doce <> 'Sorvete') then
      begin
        AQUI := 2;
      end;
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
var
  j: Integer;
begin
  AQUI := 2;
  for j := 2 to 4 do
  begin
    if (Menino[j].Nome = 'Kiko') and (Menino[j + 1].Sacola = 'Azul') or
      (Menino[j].Nome = 'Kiko') and (Menino[j - 1].Sacola = 'Azul') then
    begin
      Result := True;
      AQUI := 1;
      break;
    end;

    if (Menino[j].Nome <> '') and (Menino[j + 1].Sacola <> '') and
      (Menino[j].Nome <> '') and (Menino[j - 1].Sacola <> '') then
    begin
      if ((Menino[j].Nome = 'Kiko') and (Menino[j + 1].Sacola <> 'Azul')) and
        ((Menino[j].Nome = 'Kiko') and (Menino[j - 1].Sacola <> 'Azul')) then
      begin
        Result := False;
        AQUI := 0;
        break;
      end;
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
var
  j: Integer;
begin
  AQUI := 2;
  for j := 1 to 5 do
  begin
    if Menino[4].Idade = '' then
    begin
      break;
    end;

    if (Menino[j].Idade <> '9') then
    begin
      Result := False;
      AQUI := 0;
    end;

    if (Menino[j].Idade <> '') and (Menino[j].Idade = '9') then
    begin
      if Menino[4].Idade = '9' then
      begin
        Result := True;
        AQUI := 1;
        break;
      end
      else
      begin
        Result := False;
        AQUI := 0;
        break;
      end;
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
var
  j, i, notexist: Integer;
  Menino1, menino2, menino3: Integer;
begin
  AQUI := 2;
  notexist := 0;
  Menino1 := -1;
  menino2 := -1;
  menino3 := -1;
  for j := 1 to 5 do
  begin
    if Menino[j].Sacola = 'Amarela' then
      Menino1 := j;
    if Menino[j].Fantasia = 'Pirata' then
      menino2 := j;
    if Menino[j].Sacola = 'Vermelha' then
      menino3 := j;
    if (Menino1 <> -1) or (menino2 <> -1) or (menino3 <> -1) then
    begin
      if (Menino[j].Fantasia = 'Pirata') and (Menino[j + 1].Sacola = 'Vermelha')
      then
      begin
        Result := False;
        AQUI := 0;
        break;
      end;

      if (menino2 <> -1) and (menino3 <> -1) then
      begin
        for i := (menino2 + 1) to (menino3 - 1) do
        begin
          if (Menino[i].Sacola = '') then
          begin
            notexist := 1;
          end
          else
          begin
            notexist := 0;
            break;
          end;
        end;

        if (notexist = 1) then
        begin
          break;
        end;

        if (Menino1 > menino2) and (Menino1 < menino3) then
        begin
          Result := True;
          AQUI := 1;
          break;
        end
        else
        begin
          Result := False;
          AQUI := 0;
        end;
      end
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
var
  j: Integer;
begin
  AQUI := 2;
  for j := 2 to 5 do
  begin
    if (Menino[j - 1].Sacola <> '') and (Menino[j].Idade <> '') then
    begin
      if (Menino[j - 1].Sacola = 'Branca') and (Menino[j].Idade = '8') then
      begin
        Result := True;
        AQUI := 1;
        break;
      end
      else
      begin
        Result := False;
        AQUI := 0;
      end;
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
var
  j: Integer;
  Menino1, menino2: Integer;
begin
  AQUI := 2;
  Menino1 := -1;
  menino2 := -1;
  for j := 1 to 5 do
  begin
    if Menino[j].Sacola = 'Azul' then
      Menino1 := j;
    if Menino[j].Nome = 'Renan' then
      menino2 := j;

    if (Menino1 <> -1) and (menino2 <> -1) then
    begin
      if (Menino1 > menino2) then
      begin
        Result := False;
        AQUI := 0;
        break;
      end;

      if (Menino1 <> -1) and (menino2 <> -1) then
      begin
        if (Menino1 < menino2) then
        begin
          Result := True;
          AQUI := 1;
          break;
        end
        else
        begin
          Result := False;
          AQUI := 0;
        end;
      end
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
var
  j: Integer;
begin
  AQUI := 2;
  for j := 2 to 5 do
  begin
    if (Menino[j - 1].Doce <> '') and (Menino[j].Mae <> '') then
    begin
      if (Menino[j - 1].Doce = 'Pudim') and (Menino[j].Mae = 'Joyce') then
      begin
        Result := True;
        AQUI := 1;
        break;
      end
      else
      begin
        Result := False;
        AQUI := 0;
      end;
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
var
  j: Integer;
begin
  AQUI := 2;
  for j := 2 to 4 do
  begin
    if (Menino[j].Fantasia = 'Múmia') and (Menino[j + 1].Sacola = 'Verde') or
      (Menino[j].Fantasia = 'Múmia') and (Menino[j - 1].Sacola = 'Verde') then
    begin
      Result := True;
      AQUI := 1;
      break;
    end;

    if (Menino[j].Fantasia <> '') and (Menino[j + 1].Sacola <> '') and
      (Menino[j].Fantasia <> '') and (Menino[j - 1].Sacola <> '') then
    begin
      if ((Menino[j].Fantasia = 'Múmia') and (Menino[j + 1].Sacola <> 'Verde'))
        and ((Menino[j].Fantasia = 'Múmia') and
        (Menino[j - 1].Sacola <> 'Verde')) then
      begin
        Result := False;
        AQUI := 0;
        break;
      end;
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
var
  j: Integer;
begin
  AQUI := 2;
  for j := 1 to 4 do
  begin
    if (Menino[j + 1].Fantasia <> '') and (Menino[j].Nome <> '') then
    begin
      if (Menino[j + 1].Fantasia = 'Vampiro') and (Menino[j].Nome = 'Thales')
      then
      begin
        Result := True;
        AQUI := 1;
        break;
      end
      else
      begin
        Result := False;
        AQUI := 0;
      end;
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
var
  j: Integer;
begin
  AQUI := 2;
  for j := 2 to 4 do
  begin
    if (Menino[j].Idade = '11') and (Menino[j + 1].Doce = 'Chiclete') or
      (Menino[j].Idade = '11') and (Menino[j - 1].Doce = 'Chiclete') then
    begin
      Result := True;
      AQUI := 1;
      break;
    end;

    if (Menino[j + 1].Idade = '11') and (Menino[j].Doce = 'Chiclete') or
      (Menino[j - 1].Idade = '11') and (Menino[j].Doce = 'Chiclete') then
    begin
      Result := True;
      AQUI := 1;
      break;
    end;

    if (Menino[j].Idade <> '') and (Menino[j + 1].Doce <> '') and
      (Menino[j].Idade <> '') and (Menino[j - 1].Doce <> '') then
    begin
      if ((Menino[j].Idade = '11') and (Menino[j + 1].Doce <> 'Chiclete')) and
        ((Menino[j].Idade = '11') and (Menino[j - 1].Doce <> 'Chiclete')) then
      begin
        Result := False;
        AQUI := 0;
        break;
      end;
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
var
  j: Integer;
begin
  AQUI := 2;
  for j := 1 to 5 do
  begin
    if Menino[5].Mae = '' then
    begin
      break;
    end;

    if (Menino[j].Mae <> '') then
    begin
      Result := False;
      AQUI := 0;
    end;

    if (Menino[j].Mae <> '') and (Menino[j].Mae = 'Sandra') then
    begin
      if Menino[5].Mae = 'Sandra' then
      begin
        Result := True;
        AQUI := 1;
        break;
      end
      else
      begin
        Result := False;
        AQUI := 0;
        break;
      end;
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
var
  j: Integer;
begin
  AQUI := 2;
  for j := 1 to 4 do
  begin
    if (Menino[j].Idade <> '') and (Menino[j + 1].Idade <> '') then
    begin
      if (Menino[j].Idade = '7') and (Menino[j + 1].Idade = '9') then
      begin
        Result := True;
        AQUI := 1;
        break;
      end
      else
      begin
        Result := False;
        AQUI := 0;
      end;
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
var
  j: Integer;
begin
  AQUI := 2;
  for j := 1 to 4 do
  begin
    if (Menino[j].Nome <> '') and (Menino[j + 1].Idade <> '') then
    begin
      if (Menino[j].Nome = 'Filipe') and (Menino[j + 1].Idade = '8') then
      begin
        Result := True;
        AQUI := 1;
        break;
      end
      else
      begin
        Result := False;
        AQUI := 0;
      end;
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
var
  j, i, notexist: Integer;
  Menino1, menino2, menino3: Integer;
begin
  AQUI := 2;
  notexist := 0;
  Menino1 := -1;
  menino2 := -1;
  menino3 := -1;
  for j := 1 to 5 do
  begin
    if Menino[j].Doce = 'Bolo' then
      Menino1 := j;
    if Menino[j].Nome = 'Kiko' then
      menino2 := j;
    if Menino[j].Doce = 'Sorvete' then
      menino3 := j;
    if (Menino1 <> -1) or (menino2 <> -1) or (menino3 <> -1) then
    begin
      if (Menino[j].Nome = 'Kiko') and (Menino[j + 1].Doce = 'Sorvete') then
      begin
        Result := False;
        AQUI := 0;
        break;
      end;

      if (menino2 <> -1) and (menino3 <> -1) then
      begin
        for i := (menino2 + 1) to (menino3 - 1) do
        begin
          if (Menino[i].Doce = '') then
          begin
            notexist := 1;
          end
          else
          begin
            notexist := 0;
            break;
          end;
        end;

        if (notexist = 1) then
        begin
          break;
        end;

        if (Menino1 > menino2) and (Menino1 < menino3) then
        begin
          Result := True;
          AQUI := 1;
          break;
        end
        else
        begin
          Result := False;
          AQUI := 0;
        end;
      end
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
var
  j: Integer;
begin
  AQUI := 2;
  for j := 1 to 5 do
  begin
    if (Menino[j].Sacola <> '') and (Menino[j].Doce <> '') then
    begin
      if (Menino[j].Sacola = 'Verde') and (Menino[j].Doce = '') then
      begin
        break;
      end
      else if (Menino[j].Sacola = '') and (Menino[j].Doce = 'Picolé') then
      begin
        break;
      end;

      if (Menino[j].Sacola = 'Verde') and (Menino[j].Doce = 'Picolé') then
      begin
        Result := True;
        AQUI := 1;
        break;
      end
      else
      begin
        Result := False;
        AQUI := 0;
      end;

      if (Menino[j].Sacola <> 'Verde') and (Menino[j].Doce <> 'Picolé') then
      begin
        AQUI := 2;
      end;
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
var
  j: Integer;
begin
  AQUI := 2;
  for j := 1 to 4 do
  begin
    if (Menino[j].Mae <> '') and (Menino[j + 1].Mae <> '') then
    begin
      if (Menino[j].Mae = 'Claudia') and (Menino[j + 1].Mae = 'Ângela') then
      begin
        Result := True;
        AQUI := 1;
        break;
      end
      else
      begin
        Result := False;
        AQUI := 0;
      end;
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
var
  j: Integer;
begin
  AQUI := 2;
  for j := 1 to 5 do
  begin
    if Menino[3].Fantasia = '' then
    begin
      break;
    end;

    if (Menino[j].Fantasia <> 'Bruxo') then
    begin
      Result := False;
      AQUI := 0;
    end;

    if (Menino[j].Fantasia <> '') and (Menino[j].Fantasia = 'Bruxo') then
    begin
      if Menino[3].Fantasia = 'Bruxo' then
      begin
        Result := True;
        AQUI := 1;
        break;
      end
      else
      begin
        Result := False;
        AQUI := 0;
        break;
      end;
    end;
  end;

  if (AQUI = 1) then
  begin
    DIca7.Font.Color := clGreen;
    DIca7.Font.Style := DIca7.Font.Style + [fsStrikeOut];
  end
  else if (AQUI = 0) then
  begin
    DIca7.Font.Color := clRed;
    DIca7.Font.Style := DIca7.Font.Style - [fsStrikeOut];
  end
  else
  begin
    DIca7.Font.Color := clBlack;
    DIca7.Font.Style := DIca7.Font.Style - [fsStrikeOut];
  end;
end;

function TForm1.IfDica8: Boolean;
var
  j, i, notexist: Integer;
  filho1, filho2, filho3: Integer;
begin
  AQUI := 2;
  notexist := 1;
  filho1 := -1;
  filho2 := -1;
  filho3 := -1;
  for j := 1 to 5 do
  begin
    if Menino[j].Mae = 'Ângela' then
      filho1 := j;
    if Menino[j].Mae = 'Joyce' then
      filho2 := j;
    if Menino[j].Mae = 'Sandra' then
      filho3 := j;

    if (filho1 <> -1) or (filho2 <> -1) or (filho3 <> -1) then
    begin
      if (Menino[j].Mae = 'Joyce') and (Menino[j + 1].Mae = 'Sandra') then
      begin
        Result := False;
        AQUI := 0;
        break;
      end;

      if (filho2 <> -1) and (filho3 <> -1) then
      begin
        for i := (filho2 + 1) to (filho3 - 1) do
        begin
          if (Menino[i].Mae = '') then
          begin
            notexist := 1;
          end
          else
          begin
            notexist := 0;
            break;
          end;
        end;

        if (notexist = 1) then
        begin
          break;
        end;

        if (filho1 > filho2) and (filho1 < filho3) then
        begin
          Result := True;
          AQUI := 1;
          break;
        end
        else
        begin
          Result := False;
          AQUI := 0;
        end;
      end
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
var
  j: Integer;
begin
  AQUI := 2;
  for j := 1 to 4 do
  begin
    if (Menino[j].Doce <> '') and (Menino[j + 1].Doce <> '') then
    begin
      if (Menino[j].Doce = 'Sorvete') and (Menino[j + 1].Doce = 'Picolé') then
      begin
        Result := True;
        AQUI := 1;
        break;
      end
      else
      begin
        Result := False;
        AQUI := 0;
      end;
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

  // _____________________________________

  Menino[2].Sacola := SacolaBox2.Text;
  Menino[2].Nome := NomeBox2.Text;
  Menino[2].Fantasia := FantasiaBox2.Text;
  Menino[2].Doce := DoceBox2.Text;
  Menino[2].Idade := IdadeBox2.Text;
  Menino[2].Mae := MaeBox2.Text;

  // _____________________________________

  Menino[3].Sacola := SacolaBox3.Text;
  Menino[3].Nome := NomeBox3.Text;
  Menino[3].Fantasia := FantasiaBox3.Text;
  Menino[3].Doce := DoceBox3.Text;
  Menino[3].Idade := IdadeBox3.Text;
  Menino[3].Mae := MaeBox3.Text;

  // _____________________________________

  Menino[4].Sacola := SacolaBox4.Text;
  Menino[4].Nome := NomeBox4.Text;
  Menino[4].Fantasia := FantasiaBox4.Text;
  Menino[4].Doce := DoceBox4.Text;
  Menino[4].Idade := IdadeBox4.Text;
  Menino[4].Mae := MaeBox4.Text;

  // _____________________________________

  Menino[5].Sacola := SacolaBox5.Text;
  Menino[5].Nome := NomeBox5.Text;
  Menino[5].Fantasia := FantasiaBox5.Text;
  Menino[5].Doce := DoceBox5.Text;
  Menino[5].Idade := IdadeBox5.Text;
  Menino[5].Mae := MaeBox5.Text;
end;

end.
