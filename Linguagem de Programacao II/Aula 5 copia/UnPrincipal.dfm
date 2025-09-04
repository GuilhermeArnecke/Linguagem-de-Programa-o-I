object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 615
  ClientWidth = 984
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
    Left = 8
    Top = 328
    Width = 961
    Height = 240
    DataSource = DSEstados
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object BuscarDados: TButton
    Left = 464
    Top = 88
    Width = 97
    Height = 25
    Caption = 'Buscar Dados'
    TabOrder = 1
    OnClick = BtnBuscarTabelasClick
  end
  object DSEstados: TDataSource
    DataSet = DMPrincipal.FDQueryConsulta
    Left = 360
    Top = 128
  end
  object MainMenu1: TMainMenu
    Left = 40
    Top = 56
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Cidades1: TMenuItem
        Caption = 'Cidades'
        OnClick = Cidades1Click
      end
    end
  end
end
