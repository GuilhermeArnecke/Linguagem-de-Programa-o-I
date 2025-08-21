object DMPrincipal: TDMPrincipal
  Height = 1080
  Width = 1440
  PixelsPerInch = 144
  object FDQueryConsulta: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      '')
    Left = 432
    Top = 72
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 232
    Top = 40
  end
  object FDConexao: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'User_Name=sysdba'
      'Password=masterkey')
    Left = 80
    Top = 48
  end
  object QryCadastroCidades: TFDQuery
    Connection = FDConexao
    Left = 208
    Top = 264
  end
end
