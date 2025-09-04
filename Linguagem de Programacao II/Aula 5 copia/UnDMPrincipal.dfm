object DMPrincipal: TDMPrincipal
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object FDConexao: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'User_Name=sysdba'
      'Password=masterkey')
    Left = 80
    Top = 24
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 224
    Top = 24
  end
  object FDQueryConsulta: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      '')
    Left = 424
    Top = 32
  end
  object QryCadastroCidades: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      '')
    Left = 256
    Top = 192
  end
end
