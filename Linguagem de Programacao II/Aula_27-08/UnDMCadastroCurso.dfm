object DMCadastroCurso: TDMCadastroCurso
  Height = 1080
  Width = 1440
  PixelsPerInch = 144
  object QryCadastroCurso: TFDQuery
    CachedUpdates = True
    Connection = DMPrincipal.FDConexao
    SQL.Strings = (
      'SELECT * FROM CURSO')
    Left = 224
    Top = 176
    object QryCadastroCursoID_CURSO: TIntegerField
      FieldName = 'ID_CURSO'
      Origin = 'ID_CURSO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryCadastroCursoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object QryCadastroCursoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 50
    end
    object QryCadastroCursoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Precision = 18
      Size = 2
    end
  end
  object QryAlunos: TFDQuery
    CachedUpdates = True
    MasterSource = DsCurso
    MasterFields = 'ID_CURSO'
    Connection = DMPrincipal.FDConexao
    Left = 224
    Top = 400
  end
  object DsCurso: TDataSource
    DataSet = QryCadastroCurso
    Left = 432
    Top = 168
  end
  object DsAlunos: TDataSource
    DataSet = QryAlunos
    Left = 440
    Top = 400
  end
end
