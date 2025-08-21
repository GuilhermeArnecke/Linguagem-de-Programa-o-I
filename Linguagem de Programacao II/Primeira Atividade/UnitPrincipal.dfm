object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 531
  ClientWidth = 799
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  TextHeight = 15
  object TabelaEstados: TDBGrid
    Left = 16
    Top = 262
    Width = 761
    Height = 243
    DataSource = DSEstados
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object ConectarButton: TButton
    Left = 33
    Top = 215
    Width = 89
    Height = 33
    Caption = 'Conectar Banco'
    TabOrder = 1
    OnClick = ConectarButtonClick
  end
  object BuscarDadosButton: TButton
    Left = 136
    Top = 215
    Width = 89
    Height = 33
    Caption = 'Buscar Dados'
    TabOrder = 2
    OnClick = BuscarDadosButtonClick
  end
  object DSEstados: TDataSource
    DataSet = DMPrincipal.FDQueryConsulta
    Left = 360
    Top = 24
  end
  object MainMenu1: TMainMenu
    Left = 56
    Top = 40
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Cidades1: TMenuItem
        Caption = 'Cidades'
        OnClick = Cidades1Click
      end
    end
  end
end
