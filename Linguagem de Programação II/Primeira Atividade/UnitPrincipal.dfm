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
  object FDConexao: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'User_Name=sysdba'
      'Password=masterkey')
    Left = 40
    Top = 24
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 144
    Top = 24
  end
  object FDQueryConsulta: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      '')
    Left = 264
    Top = 24
  end
  object DSEstados: TDataSource
    DataSet = FDQueryConsulta
    Left = 360
    Top = 24
  end
end
