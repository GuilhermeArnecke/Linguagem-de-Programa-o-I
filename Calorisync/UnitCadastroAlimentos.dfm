object TelaCadastroDeAlimentos: TTelaCadastroDeAlimentos
  Left = 0
  Top = 0
  Caption = 'Cadastro de Alimentos'
  ClientHeight = 638
  ClientWidth = 1044
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object PainelSuperior: TPanel
    Left = 0
    Top = 0
    Width = 625
    Height = 113
    TabOrder = 0
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=PG')
    Left = 400
    Top = 256
  end
  object FDConnection2: TFDConnection
    Params.Strings = (
      'Database=caloribanco'
      'User_Name=postgres'
      'Password=postgres'
      'Server=192.168.4.126'
      'Port=65432'
      'DriverID=PG')
    Left = 536
    Top = 296
  end
end
