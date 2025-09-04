object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 583
  ClientWidth = 829
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  OnShow = FormShow
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 32
    Top = 184
    Width = 721
    Height = 361
    DataSource = DSEstados
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Button2: TButton
    Left = 691
    Top = 24
    Width = 113
    Height = 41
    Caption = 'Buscar Dados'
    TabOrder = 1
    OnClick = Button2Click
  end
  object DSEstados: TDataSource
    DataSet = DMPrincipal.FDQueryConsulta
    Left = 432
    Top = 24
  end
  object MainMenu1: TMainMenu
    Left = 96
    Top = 32
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Cidades1: TMenuItem
        Caption = 'Cidades'
        OnClick = Cidades1Click
      end
    end
  end
end
