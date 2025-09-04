object DMPrincipal: TDMPrincipal
  Height = 677
  Width = 984
  PixelsPerInch = 144
  object FDConexao: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=masterkey'
      
        'Database=C:\Users\guilh\Documents\GitHub\Delphi\Linguagem de Pro' +
        'gramacao II\Aula_27-08\BANCO.FDB'
      'DriverID=FB')
    Connected = True
    Left = 152
    Top = 24
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 160
    Top = 136
  end
  object FDQueryConsulta: TFDQuery
    Connection = FDConexao
    Left = 320
    Top = 40
  end
  object QryCadastroCidades: TFDQuery
    Connection = FDConexao
    Left = 176
    Top = 344
  end
end
