object DMCadastroCidades: TDMCadastroCidades
  Height = 1080
  Width = 1440
  PixelsPerInch = 144
  object QryCadastroCidades: TFDQuery
    OnNewRecord = QryCadastroCidadesNewRecord
    CachedUpdates = True
    Connection = DMPrincipal.FDConexao
    SQL.Strings = (
      'SELECT * FROM CIDADES')
    Left = 184
    Top = 168
    object QryCadastroCidadesID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryCadastroCidadesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object QryCadastroCidadesID_ESTADO: TIntegerField
      FieldName = 'ID_ESTADO'
      Origin = 'ID_ESTADO'
      Required = True
    end
    object QryCadastroCidadesDescricaoEstado: TStringField
      FieldKind = fkLookup
      FieldName = 'DescricaoEstado'
      LookupDataSet = QryEstados
      LookupKeyFields = 'ID_ESTADO'
      LookupResultField = 'NOME'
      KeyFields = 'ID_ESTADO'
      Size = 50
      Lookup = True
    end
  end
  object QryEstados: TFDQuery
    Connection = DMPrincipal.FDConexao
    SQL.Strings = (
      'SELECT * FROM ESTADOS')
    Left = 488
    Top = 232
  end
end
